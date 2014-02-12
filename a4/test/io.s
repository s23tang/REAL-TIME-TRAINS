	.file	"io.c"
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
	.ident	"GCC: (GNU) 4.0.2"
