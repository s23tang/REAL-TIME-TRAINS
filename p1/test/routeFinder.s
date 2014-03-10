	.file	"routeFinder.c"
	.text
	.align	2
	.global	route
	.type	route, %function
route:
	@ args = 0, pretend = 0, frame = 2360
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #2352
	sub	sp, sp, #8
	str	r0, [fp, #-2360]
	str	r1, [fp, #-2364]
	str	r2, [fp, #-2368]
	str	r3, [fp, #-2372]
	mov	r3, #144
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L2
.L3:
	ldr	r3, [fp, #-48]
	ldr	r2, .L51
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, .L51+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-48]
	ldr	r2, .L51+8
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-48]
	ldr	r2, .L51+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mvn	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-48]
	ldr	r2, .L51+16
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L2:
	ldr	r3, [fp, #-48]
	cmp	r3, #143
	ble	.L3
	ldr	r3, [fp, #-2368]
	ldr	r2, .L51
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-2368]
	str	r3, [fp, #-44]
	b	.L50
.L6:
	ldr	r3, .L51+4
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L7
.L8:
	ldr	r3, [fp, #-48]
	ldr	r2, .L51+16
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #1
	bne	.L9
	ldr	r3, [fp, #-48]
	ldr	r2, .L51
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bge	.L9
	ldr	r3, [fp, #-48]
	ldr	r2, .L51
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-44]
.L9:
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L7:
	ldr	r3, [fp, #-48]
	cmp	r3, #143
	ble	.L8
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-2372]
	cmp	r2, r3
	beq	.L13
	ldr	r3, [fp, #-44]
	ldr	r2, .L51+16
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2360]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L15
	mov	r3, #2
	str	r3, [fp, #-20]
	b	.L17
.L15:
	mov	r3, #1
	str	r3, [fp, #-20]
.L17:
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L18
.L19:
	ldr	r3, [fp, #-44]
	ldr	r2, .L51
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r0, [r3, #0]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2360]
	add	r1, r2, r3
	ldr	r3, [fp, #-48]
	mov	r2, #28
	mov	r3, r3, asl #4
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r3, r0, r3
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2360]
	add	r1, r2, r3
	ldr	r3, [fp, #-48]
	mov	r2, #24
	mov	r3, r3, asl #4
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2360]
	add	r1, r2, r3
	ldr	r3, [fp, #-48]
	mov	r2, #24
	mov	r3, r3, asl #4
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	bne	.L20
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-28]
	b	.L22
.L20:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	bne	.L23
	ldr	r3, [fp, #-24]
	cmp	r3, #18
	bgt	.L25
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	add	r3, r3, #78
	str	r3, [fp, #-28]
	b	.L22
.L25:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	sub	r3, r3, #190
	str	r3, [fp, #-28]
	b	.L22
.L23:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	bne	.L22
	ldr	r3, [fp, #-24]
	cmp	r3, #18
	bgt	.L29
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	add	r3, r3, #79
	str	r3, [fp, #-28]
	b	.L22
.L29:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	sub	r3, r3, #189
	str	r3, [fp, #-28]
.L22:
	ldr	r3, [fp, #-28]
	ldr	r2, .L51
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	ble	.L31
	ldr	r3, [fp, #-28]
	ldr	r2, .L51
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, .L51+8
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-44]
	str	r3, [r2, #0]
	ldr	r1, [fp, #-28]
	ldr	r3, [fp, #-48]
	and	r0, r3, #255
	ldr	r2, .L51+12
	mov	r3, r1, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, r0
	strb	r3, [r2, #0]
.L31:
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L18:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L19
	ldr	r3, [fp, #-44]
	ldr	r2, .L51
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2360]
	add	r3, r2, r3
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2360]
	add	r3, r2, r3
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	bne	.L34
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-28]
	b	.L36
.L34:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	bne	.L37
	ldr	r3, [fp, #-24]
	cmp	r3, #18
	bgt	.L39
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	add	r3, r3, #78
	str	r3, [fp, #-28]
	b	.L36
.L39:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	sub	r3, r3, #190
	str	r3, [fp, #-28]
	b	.L36
.L37:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	bne	.L36
	ldr	r3, [fp, #-24]
	cmp	r3, #18
	bgt	.L43
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	add	r3, r3, #79
	str	r3, [fp, #-28]
	b	.L36
.L43:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	sub	r3, r3, #189
	str	r3, [fp, #-28]
.L36:
	ldr	r3, [fp, #-28]
	ldr	r2, .L51
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	ble	.L5
	ldr	r3, [fp, #-28]
	ldr	r2, .L51
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, .L51+8
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-44]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, .L51+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
.L5:
.L50:
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	bne	.L6
.L13:
	mov	r3, #0
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-2372]
	str	r3, [fp, #-40]
	b	.L46
.L47:
	ldr	r1, [fp, #-48]
	ldr	r2, [fp, #-2364]
	ldr	r3, [fp, #-40]
	str	r3, [r2, r1, asl #3]
	ldr	r0, [fp, #-48]
	ldr	r3, [fp, #-40]
	ldr	r2, .L51+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldrb	ip, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-2364]
	mov	r1, #4
	mov	r3, r0, asl #3
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, ip
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-40]
	ldr	r2, .L51+8
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L46:
	ldr	r3, [fp, #-40]
	cmn	r3, #1
	bne	.L47
	ldr	r3, [fp, #-48]
	sub	r2, r3, #1
	ldr	r3, [fp, #-2364]
	str	r2, [r3, #400]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L52:
	.align	2
.L51:
	.word	-616
	.word	99999
	.word	-1768
	.word	-1764
	.word	-2344
	.size	route, .-route
	.section	.rodata
	.align	2
.LC0:
	.ascii	"route\000"
	.text
	.align	2
	.global	routeFinder
	.type	routeFinder, %function
routeFinder:
	@ args = 0, pretend = 0, frame = 7364
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #7360
	sub	sp, sp, #8
	ldr	sl, .L57
.L56:
	add	sl, pc, sl
	sub	r3, fp, #6912
	sub	r3, r3, #16
	sub	r3, r3, #12
	mov	r0, r3
	bl	init_tracka(PLT)
	ldr	r3, .L57+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
.L54:
	sub	r2, fp, #6912
	sub	r2, r2, #16
	sub	r2, r2, #44
	sub	r3, fp, #6912
	sub	r3, r3, #16
	sub	r3, r3, #48
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, .L57+8
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-24]
	ldr	r2, .L57+12
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	ldr	r3, .L57+16
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	sub	r3, fp, #6912
	sub	r3, r3, #16
	sub	r3, r3, #28
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Reply(PLT)
	ldr	r2, .L57+12
	mov	r3, #13
	sub	r1, fp, #16
	str	r3, [r1, r2]
	sub	r2, fp, #6912
	sub	r2, r2, #16
	sub	r2, r2, #28
	sub	ip, fp, #6912
	sub	ip, ip, #16
	sub	ip, ip, #44
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, .L57+8
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	sub	r2, fp, #6912
	sub	r2, r2, #16
	sub	r2, r2, #12
	sub	r3, fp, #7360
	sub	r3, r3, #16
	sub	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	bl	route(PLT)
	sub	r2, fp, #6912
	sub	r2, r2, #16
	sub	r2, r2, #44
	sub	r3, fp, #6912
	sub	r3, r3, #16
	sub	r3, r3, #48
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, .L57+16
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	sub	r3, fp, #7360
	sub	r3, r3, #16
	sub	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	mov	r2, #404
	bl	Reply(PLT)
	b	.L54
.L58:
	.align	2
.L57:
	.word	_GLOBAL_OFFSET_TABLE_-(.L56+8)
	.word	.LC0(GOTOFF)
	.word	-6956
	.word	-6940
	.word	-6960
	.size	routeFinder, .-routeFinder
	.ident	"GCC: (GNU) 4.0.2"
