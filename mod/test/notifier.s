	.file	"notifier.c"
	.text
	.align	2
	.global	notifier
	.type	notifier, %function
notifier:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #100
	sub	r2, fp, #108
	sub	r3, fp, #68
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, [fp, #-108]
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-64]
	cmp	r3, #5
	addls	pc, pc, r3, asl #2
	b	.L2
	.p2align 2
.L9:
	b	.L3
	b	.L4
	b	.L5
	b	.L6
	b	.L7
	b	.L8
.L8:
	ldr	r3, .L20
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #0]
	orr	r2, r3, #1048576
	ldr	r3, [fp, #-60]
	str	r2, [r3, #0]
	b	.L2
.L4:
	ldr	r3, .L20
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #0]
	orr	r2, r3, #1048576
	ldr	r3, [fp, #-56]
	str	r2, [r3, #0]
	b	.L2
.L5:
	ldr	r3, .L20
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3, #0]
	orr	r2, r3, #1048576
	ldr	r3, [fp, #-52]
	str	r2, [r3, #0]
	ldr	r3, .L20+4
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #0]
	orr	r2, r3, #16
	ldr	r3, [fp, #-48]
	str	r2, [r3, #0]
	b	.L2
.L6:
	ldr	r3, .L20
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #0]
	orr	r2, r3, #4194304
	ldr	r3, [fp, #-44]
	str	r2, [r3, #0]
	b	.L2
.L7:
	ldr	r3, .L20+8
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #0]
	orr	r2, r3, #16
	ldr	r3, [fp, #-40]
	str	r2, [r3, #0]
	ldr	r3, .L20
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #0]
	orr	r2, r3, #4194304
	ldr	r3, [fp, #-36]
	str	r2, [r3, #0]
	b	.L2
.L3:
	ldr	r3, .L20+12
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-32]
	ldr	r3, .L20+16
	str	r3, [r2, #0]
	ldr	r3, .L20+20
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	orr	r2, r3, #64
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	orr	r2, r3, #8
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	orr	r2, r3, #128
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, .L20
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	orr	r2, r3, #524288
	ldr	r3, [fp, #-24]
	str	r2, [r3, #0]
.L2:
	mov	r3, #0
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-68]
	sub	r2, fp, #88
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	b	.L19
.L10:
.L19:
	ldr	r3, [fp, #-64]
	cmp	r3, #5
	bne	.L11
	mov	r3, #8
	str	r3, [fp, #-88]
	b	.L13
.L11:
	mov	r3, #1
	str	r3, [fp, #-88]
.L13:
	ldr	r0, [fp, #-64]
	bl	AwaitEvent(PLT)
	mov	r3, r0
	str	r3, [fp, #-84]
	ldr	r2, [fp, #-68]
	sub	r1, fp, #88
	sub	ip, fp, #108
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-64]
	cmp	r3, #1
	bne	.L14
	ldr	r3, .L20+24
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-104]
	and	r3, r3, #255
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L10
.L14:
	ldr	r3, [fp, #-64]
	cmp	r3, #3
	bne	.L10
	ldr	r3, .L20+28
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-104]
	and	r3, r3, #255
	mov	r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #0]
	b	.L10
.L21:
	.align	2
.L20:
	.word	-2146697200
	.word	-2138308588
	.word	-2138243052
	.word	-2139029376
	.word	5080
	.word	-2139029368
	.word	-2138308608
	.word	-2138243072
	.size	notifier, .-notifier
	.ident	"GCC: (GNU) 4.0.2"
