	.file	"wtA4.c"
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
	beq	.L20
	mvn	r3, #0
	str	r3, [fp, #-44]
	b	.L22
.L20:
	mov	r3, #0
	str	r3, [fp, #-44]
.L22:
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
	beq	.L25
	mvn	r3, #0
	str	r3, [fp, #-44]
	b	.L27
.L25:
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-44]
.L27:
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
	bge	.L32
	mvn	r3, #0
	str	r3, [fp, #-40]
	b	.L34
.L32:
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
.L34:
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
	ldr	sl, .L45
.L44:
	add	sl, pc, sl
	sub	r2, fp, #52
	sub	r3, fp, #36
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Receive(PLT)
	ldr	r3, .L45+4
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-32]
	mov	r3, #524288
	str	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	beq	.L40
	b	.L39
.L40:
	ldr	r3, .L45+8
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-28]
	ldr	r3, .L45+12
	str	r3, [r2, #0]
	ldr	r3, .L45+16
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
	ldr	r3, .L45+4
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	mov	r3, #524288
	str	r3, [r2, #0]
	b	.L41
.L39:
	mov	r0, #1
	ldr	r3, .L45+20
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
.L41:
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	sub	r2, fp, #44
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
.L42:
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
	b	.L42
.L46:
	.align	2
.L45:
	.word	_GLOBAL_OFFSET_TABLE_-(.L44+8)
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
	ldr	sl, .L88
.L87:
	add	sl, pc, sl
	ldr	r3, .L88+4
	add	r3, sl, r3
	str	r3, [fp, #-64]
	ldr	r3, .L88+8
	add	r3, sl, r3
	str	r3, [fp, #-60]
	ldr	r3, .L88+12
	add	r3, sl, r3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-68]
	ldr	r3, .L88+16
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmn	r3, #1
	bne	.L48
	mov	r0, #1
	ldr	r3, .L88+20
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L48:
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L50
.L51:
	ldr	r3, [fp, #-44]
	ldr	r2, .L88+24
	mov	r3, r3, asl #3
	sub	r0, fp, #16
	add	r3, r3, r0
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	ldr	r2, .L88+28
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L50:
	ldr	r3, [fp, #-44]
	cmp	r3, #29
	bls	.L51
	b	.L86
.L52:
.L86:
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
	beq	.L55
	ldr	r1, [fp, #-348]
	cmp	r1, #3
	beq	.L56
	ldr	r3, [fp, #-348]
	cmp	r3, #1
	beq	.L54
	b	.L52
.L54:
	ldr	r2, [fp, #-328]
	mov	r0, #1
	ldr	r3, .L88+32
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	beq	.L57
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
	ldr	r3, .L88+36
	add	r3, sl, r3
	mov	r1, r3
	ldr	r3, [fp, #-48]
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L88+40
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
	b	.L52
.L57:
	ldr	r3, [fp, #-328]
	str	r3, [fp, #-48]
	b	.L52
.L55:
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
	beq	.L60
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #4
	bne	.L62
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
	ldr	r3, .L88+44
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L88+40
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
	b	.L64
.L62:
	ldr	r3, [fp, #-332]
	cmp	r3, #0
	bne	.L65
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	beq	.L67
.L65:
	ldr	r3, [fp, #-332]
	cmp	r3, #1
	bne	.L68
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L67
.L68:
	ldr	r3, [fp, #-332]
	cmp	r3, #2
	bne	.L70
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L70
.L67:
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
	ldr	r3, .L88+48
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	ldr	r2, [fp, #-328]
	mov	r0, #1
	ldr	r3, .L88+52
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L88+40
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
	b	.L64
.L70:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L72
	ldr	r3, [fp, #-332]
	cmp	r3, #2
	beq	.L74
.L72:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L75
	ldr	r3, [fp, #-332]
	cmp	r3, #0
	beq	.L74
.L75:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L77
	ldr	r3, [fp, #-332]
	cmp	r3, #1
	bne	.L77
.L74:
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
	ldr	r3, .L88+48
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	ldr	r3, [fp, #-32]
	ldr	r2, [r3, #0]
	mov	r0, #1
	ldr	r3, .L88+52
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L88+40
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
	b	.L64
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
	ldr	r3, .L88+48
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L88+56
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L88+40
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
.L64:
	ldr	r2, [fp, #-32]
	mov	r3, #3
	str	r3, [r2, #4]
	b	.L52
.L60:
	ldr	r2, [fp, #-332]
	ldr	r3, [fp, #-28]
	str	r2, [r3, #4]
	b	.L52
.L56:
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
	bne	.L80
	ldr	r2, [fp, #-328]
	ldr	r3, [fp, #-24]
	ldr	ip, [r3, #0]
	mov	r0, #1
	ldr	r3, .L88+60
	add	r3, sl, r3
	mov	r1, r3
	mov	r3, ip
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L88+40
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	bl	getc(PLT)
	ldr	r2, [fp, #-24]
	mov	r3, #3
	str	r3, [r2, #4]
	b	.L82
.L80:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	cmp	r3, #3
	beq	.L83
	ldr	r2, [fp, #-24]
	mov	r3, #3
	str	r3, [r2, #4]
	mov	r3, #4
	str	r3, [fp, #-344]
	ldr	r2, [fp, #-328]
	ldr	r3, [fp, #-24]
	ldr	ip, [r3, #0]
	mov	r0, #1
	ldr	r3, .L88+64
	add	r3, sl, r3
	mov	r1, r3
	mov	r3, ip
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L88+40
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
	b	.L82
.L83:
	ldr	r2, [fp, #-20]
	mov	r3, #4
	str	r3, [r2, #4]
.L82:
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
	b	.L52
.L89:
	.align	2
.L88:
	.word	_GLOBAL_OFFSET_TABLE_-(.L87+8)
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
	ldr	sl, .L111
.L110:
	add	sl, pc, sl
	ldr	r3, .L111+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	cmn	r3, #1
	bne	.L91
	mov	r0, #1
	ldr	r3, .L111+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L91:
	ldr	r3, .L111+12
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
	b	.L109
.L93:
.L109:
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
	beq	.L96
	ldr	r2, [fp, #-436]
	cmp	r2, #3
	beq	.L97
	ldr	r3, [fp, #-436]
	cmp	r3, #1
	beq	.L95
	b	.L94
.L95:
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
	b	.L94
.L96:
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
	b	.L94
.L97:
	ldr	r2, [fp, #-428]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-40]
	ldr	r1, .L111+16
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
	ldr	r0, .L111+20
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
	b	.L98
.L99:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bcc	.L100
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	mov	r1, r3
	ldr	r0, .L111+24
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
	b	.L102
.L100:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	add	r3, r3, #8
	str	r3, [fp, #-20]
.L98:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L99
.L102:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L94
	ldr	r2, [fp, #-40]
	ldr	r1, .L111+24
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
.L94:
	ldr	r3, [fp, #-416]
	str	r3, [fp, #-28]
	b	.L104
.L105:
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bne	.L93
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
.L104:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L105
	b	.L93
.L112:
	.align	2
.L111:
	.word	_GLOBAL_OFFSET_TABLE_-(.L110+8)
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
	ldr	sl, .L155
.L154:
	add	sl, pc, sl
	ldr	r3, .L155+4
	add	r3, sl, r3
	str	r3, [fp, #-64]
	ldr	r3, .L155+8
	add	r3, sl, r3
	str	r3, [fp, #-56]
	b	.L153
.L114:
.L153:
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
	beq	.L116
	ldr	r3, [fp, #-96]
	cmp	r3, #2
	beq	.L117
	b	.L114
.L116:
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-76]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L118
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-36]
	mov	r3, #1
	str	r3, [fp, #-48]
	b	.L120
.L121:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L122
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L120:
	ldr	r3, [fp, #-48]
	cmp	r3, #3
	bls	.L121
.L122:
	ldr	r3, [fp, #-48]
	cmp	r3, #4
	bne	.L126
	mov	r3, #1
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-60]
	b	.L126
.L118:
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L126
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-36]
	mov	r3, #1
	str	r3, [fp, #-48]
	b	.L128
.L129:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L130
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L128:
	ldr	r3, [fp, #-48]
	cmp	r3, #5
	bls	.L129
.L130:
	ldr	r3, [fp, #-48]
	cmp	r3, #6
	bne	.L126
	mov	r3, #1
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-52]
.L126:
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L133
	mvn	r3, #0
	str	r3, [fp, #-92]
.L133:
	ldr	r3, [fp, #-68]
	sub	r2, fp, #92
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L114
.L117:
	mov	r3, #0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-76]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L135
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-32]
	b	.L137
.L138:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L139
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L137:
	ldr	r3, [fp, #-32]
	cmp	r3, #3
	bls	.L138
.L139:
	ldr	r3, [fp, #-32]
	cmp	r3, #4
	bne	.L143
	mov	r3, #1
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-84]
	b	.L143
.L135:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L143
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-32]
	b	.L145
.L146:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L147
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L145:
	ldr	r3, [fp, #-32]
	cmp	r3, #5
	bls	.L146
.L147:
	ldr	r3, [fp, #-32]
	cmp	r3, #6
	bne	.L143
	mov	r3, #1
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-84]
.L143:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L150
	mvn	r3, #0
	str	r3, [fp, #-92]
.L150:
	ldr	r3, [fp, #-68]
	sub	r2, fp, #92
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L114
.L156:
	.align	2
.L155:
	.word	_GLOBAL_OFFSET_TABLE_-(.L154+8)
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
	ldr	sl, .L163
.L162:
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
	ldr	r3, .L163+4
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
	b	.L158
.L159:
	ldr	r3, [fp, #-32]
	mov	r0, r3
	ldr	r1, [fp, #-24]
	bl	Delay(PLT)
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [sp, #0]
	mov	r0, #1
	ldr	r3, .L163+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-24]
	bl	bwprintf(PLT)
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L158:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L159
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L164:
	.align	2
.L163:
	.word	_GLOBAL_OFFSET_TABLE_-(.L162+8)
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
	ldr	sl, .L172
.L171:
	add	sl, pc, sl
	ldr	r3, .L172+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	b	.L170
.L166:
.L170:
	ldr	r0, [fp, #-36]
	bl	Time(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #250
	ble	.L166
	ldr	r3, .L172+8
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-28]
	mov	r3, #524288
	str	r3, [r2, #0]
	ldr	r3, .L172+12
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L172+16
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
	b	.L166
.L173:
	.align	2
.L172:
	.word	_GLOBAL_OFFSET_TABLE_-(.L171+8)
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
	ldr	sl, .L177
.L176:
	add	sl, pc, sl
	ldr	r3, .L177+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L177+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r3, .L177+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L177+16
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
	ldr	r3, .L177+20
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
	ldr	r3, .L177+24
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L178:
	.align	2
.L177:
	.word	_GLOBAL_OFFSET_TABLE_-(.L176+8)
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
	ldr	sl, .L184
.L183:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L184+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, .L184+8
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
.L181:
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
.L180:
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
.L185:
	.align	2
.L184:
	.word	_GLOBAL_OFFSET_TABLE_-(.L183+8)
	.word	.L180(GOTOFF)
	.word	.L181(GOTOFF)
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
	b	.L187
.L188:
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
.L187:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L188
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
	ldr	r3, .L193
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
.L194:
	.align	2
.L193:
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
	ldr	sl, .L209
.L208:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L196
.L197:
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
.L196:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L197
	bl	getStackSize(PLT)
	mov	r3, r0
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L209+4
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
	ldr	r3, .L209+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-24]
	b	.L199
.L200:
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
.L199:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L200
	mov	r3, #14
	str	r3, [fp, #-24]
	b	.L202
.L203:
	ldr	r3, [fp, #-24]
	cmp	r3, #13
	beq	.L204
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
.L204:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L202:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L203
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
.L210:
	.align	2
.L209:
	.word	_GLOBAL_OFFSET_TABLE_-(.L208+8)
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
	b	.L212
.L213:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L214
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
	b	.L216
.L214:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L212:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bls	.L213
	mov	r3, #0
	str	r3, [fp, #-32]
.L216:
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
	beq	.L222
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
.L222:
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
	bne	.L224
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L227
.L224:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L227:
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
	bne	.L229
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L229:
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
	beq	.L233
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L235
.L233:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L235:
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
	b	.L277
	.p2align 2
.L249:
	b	.L239
	b	.L240
	b	.L241
	b	.L242
	b	.L243
	b	.L244
	b	.L245
	b	.L246
	b	.L247
	b	.L248
.L239:
	ldr	r3, .L278
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
	bne	.L250
	ldr	r2, [fp, #-164]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-164]
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L277
.L250:
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
	b	.L277
.L240:
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
	ldr	r3, .L278+4
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
	b	.L253
.L254:
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
.L253:
	ldr	r3, [fp, #-108]
	cmp	r3, #0
	bne	.L254
	mov	r3, #14
	str	r3, [fp, #-108]
	b	.L256
.L257:
	ldr	r3, [fp, #-108]
	cmp	r3, #13
	beq	.L258
	ldr	r3, [fp, #-120]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-120]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-120]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-108]
	str	r3, [r2, #0]
.L258:
	ldr	r3, [fp, #-108]
	sub	r3, r3, #1
	str	r3, [fp, #-108]
.L256:
	ldr	r3, [fp, #-108]
	cmp	r3, #3
	bhi	.L257
	ldr	r3, [fp, #-116]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L261
	ldr	r2, [fp, #-116]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-116]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #4]
	b	.L263
.L261:
	ldr	r3, [fp, #-116]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-116]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #4]
.L263:
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-160]
	str	r2, [r3, #24]
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	rescheduleActive(PLT)
	b	.L277
.L241:
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
	b	.L277
.L242:
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
	b	.L277
.L243:
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	rescheduleActive(PLT)
	b	.L277
.L244:
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	closeActive(PLT)
	b	.L277
.L245:
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
	ble	.L264
	ldr	r3, [fp, #-84]
	cmp	r3, #30
	ble	.L266
.L264:
	ldr	r2, [fp, #-88]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L277
.L266:
	ldr	r3, [fp, #-96]
	mov	r0, r3
	ldr	r1, [fp, #-156]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L267
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
	b	.L277
.L267:
	ldr	r2, [fp, #-88]
	mov	r3, #3
	str	r3, [r2, #16]
	ldr	r2, [fp, #-88]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L270
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-72]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-72]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #52]
	b	.L277
.L270:
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #52]
	b	.L277
.L246:
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
	bne	.L272
	ldr	r3, [fp, #-60]
	mov	r2, #2
	str	r2, [r3, #16]
	ldr	r3, [fp, #-68]
	mov	r0, r3
	ldr	r1, [fp, #-156]
	bl	blockActive(PLT)
	b	.L277
.L272:
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
	b	.L277
.L247:
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
	b	.L277
.L248:
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
	ble	.L275
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
	b	.L277
.L275:
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
.L277:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L279:
	.align	2
.L278:
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
.L281:
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
	beq	.L282
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
	b	.L281
.L282:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
