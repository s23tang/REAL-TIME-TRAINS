	.file	"courier.c"
	.text
	.align	2
	.global	Courier
	.type	Courier, %function
Courier:
	@ args = 0, pretend = 0, frame = 44
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #48
	sub	r2, fp, #56
	sub	r3, fp, #24
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-24]
	sub	r2, fp, #40
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Reply(PLT)
.L2:
	mov	r3, #16
	str	r3, [fp, #-40]
	sub	r2, fp, #40
	sub	ip, fp, #56
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-20]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, [fp, #-24]
	sub	r1, fp, #56
	sub	ip, fp, #40
	mov	r3, #16
	str	r3, [sp, #0]
	mov	r0, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	b	.L2
	.size	Courier, .-Courier
	.ident	"GCC: (GNU) 4.0.2"
