	.file	"notifier.c"
	.text
	.align	2
	.global	notifier
	.type	notifier, %function
notifier:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #60
	mov	r3, #0
	str	r3, [fp, #-48]
	sub	r2, fp, #68
	sub	r3, fp, #52
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Receive(PLT)
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmp	r3, #4
	addls	pc, pc, r3, asl #2
	b	.L2
	.p2align 2
.L8:
	b	.L3
	b	.L2
	b	.L2
	b	.L6
	b	.L7
.L6:
	ldr	r3, .L11
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-40]
	str	r2, [r3, #0]
	ldr	r3, .L11+4
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #0]
	orr	r2, r3, #4194304
	ldr	r3, [fp, #-36]
	str	r2, [r3, #0]
.L7:
	mov	r3, #1
	str	r3, [fp, #-48]
	ldr	r3, .L11
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	orr	r2, r3, #16
	ldr	r3, [fp, #-32]
	str	r2, [r3, #0]
	ldr	r3, .L11+4
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	orr	r2, r3, #4194304
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	b	.L2
.L3:
	ldr	r3, .L11+8
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	ldr	r3, .L11+12
	str	r3, [r2, #0]
	ldr	r3, .L11+16
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	orr	r2, r3, #64
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	orr	r2, r3, #8
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	orr	r2, r3, #128
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, .L11+4
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	orr	r2, r3, #524288
	ldr	r3, [fp, #-16]
	str	r2, [r3, #0]
.L2:
	mov	r3, #0
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-52]
	sub	r2, fp, #60
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
.L9:
	mov	r3, #1
	str	r3, [fp, #-60]
	ldr	r0, [fp, #-44]
	bl	AwaitEvent(PLT)
	mov	r3, r0
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-52]
	sub	r1, fp, #60
	sub	ip, fp, #68
	mov	r3, #8
	str	r3, [sp, #0]
	mov	r0, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	b	.L9
.L12:
	.align	2
.L11:
	.word	-2138243052
	.word	-2146697200
	.word	-2139029376
	.word	5080
	.word	-2139029368
	.size	notifier, .-notifier
	.ident	"GCC: (GNU) 4.0.2"
