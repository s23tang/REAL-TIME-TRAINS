	.file	"routeFinder.c"
	.text
	.align	2
	.global	routeFinder
	.type	routeFinder, %function
routeFinder:
	@ args = 0, pretend = 0, frame = 6912
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #6912
	sub	r3, fp, #6912
	sub	r3, r3, #12
	mov	r0, r3
	bl	init_tracka(PLT)
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	routeFinder, .-routeFinder
	.ident	"GCC: (GNU) 4.0.2"
