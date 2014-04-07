	.file	"track_data.c"
	.text
	.align	2
	.type	memset, %function
memset:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #16
	str	r0, [fp, #-20]
	str	r1, [fp, #-24]
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-16]
	b	.L2
.L3:
	ldr	r3, [fp, #-24]
	and	r3, r3, #255
	ldr	r2, [fp, #-16]
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmn	r3, #1
	bne	.L3
	ldr	r3, [fp, #-20]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	memset, .-memset
	.section	.rodata
	.align	2
.LC0:
	.ascii	"A1\000"
	.align	2
.LC1:
	.ascii	"A2\000"
	.align	2
.LC2:
	.ascii	"A3\000"
	.align	2
.LC3:
	.ascii	"A4\000"
	.align	2
.LC4:
	.ascii	"A5\000"
	.align	2
.LC5:
	.ascii	"A6\000"
	.align	2
.LC6:
	.ascii	"A7\000"
	.align	2
.LC7:
	.ascii	"A8\000"
	.align	2
.LC8:
	.ascii	"A9\000"
	.align	2
.LC9:
	.ascii	"A10\000"
	.align	2
.LC10:
	.ascii	"A11\000"
	.align	2
.LC11:
	.ascii	"A12\000"
	.align	2
.LC12:
	.ascii	"A13\000"
	.align	2
.LC13:
	.ascii	"A14\000"
	.align	2
.LC14:
	.ascii	"A15\000"
	.align	2
.LC15:
	.ascii	"A16\000"
	.align	2
.LC16:
	.ascii	"B1\000"
	.align	2
.LC17:
	.ascii	"B2\000"
	.align	2
.LC18:
	.ascii	"B3\000"
	.align	2
.LC19:
	.ascii	"B4\000"
	.align	2
.LC20:
	.ascii	"B5\000"
	.align	2
.LC21:
	.ascii	"B6\000"
	.align	2
.LC22:
	.ascii	"B7\000"
	.align	2
.LC23:
	.ascii	"B8\000"
	.align	2
.LC24:
	.ascii	"B9\000"
	.align	2
.LC25:
	.ascii	"B10\000"
	.align	2
.LC26:
	.ascii	"B11\000"
	.align	2
.LC27:
	.ascii	"B12\000"
	.align	2
.LC28:
	.ascii	"B13\000"
	.align	2
.LC29:
	.ascii	"B14\000"
	.align	2
.LC30:
	.ascii	"B15\000"
	.align	2
.LC31:
	.ascii	"B16\000"
	.align	2
.LC32:
	.ascii	"C1\000"
	.align	2
.LC33:
	.ascii	"C2\000"
	.align	2
.LC34:
	.ascii	"C3\000"
	.align	2
.LC35:
	.ascii	"C4\000"
	.align	2
.LC36:
	.ascii	"C5\000"
	.align	2
.LC37:
	.ascii	"C6\000"
	.align	2
.LC38:
	.ascii	"C7\000"
	.align	2
.LC39:
	.ascii	"C8\000"
	.align	2
.LC40:
	.ascii	"C9\000"
	.align	2
.LC41:
	.ascii	"C10\000"
	.align	2
.LC42:
	.ascii	"C11\000"
	.align	2
.LC43:
	.ascii	"C12\000"
	.align	2
.LC44:
	.ascii	"C13\000"
	.align	2
.LC45:
	.ascii	"C14\000"
	.align	2
.LC46:
	.ascii	"C15\000"
	.align	2
.LC47:
	.ascii	"C16\000"
	.align	2
.LC48:
	.ascii	"D1\000"
	.align	2
.LC49:
	.ascii	"D2\000"
	.align	2
.LC50:
	.ascii	"D3\000"
	.align	2
.LC51:
	.ascii	"D4\000"
	.align	2
.LC52:
	.ascii	"D5\000"
	.align	2
.LC53:
	.ascii	"D6\000"
	.align	2
.LC54:
	.ascii	"D7\000"
	.align	2
.LC55:
	.ascii	"D8\000"
	.align	2
.LC56:
	.ascii	"D9\000"
	.align	2
.LC57:
	.ascii	"D10\000"
	.align	2
.LC58:
	.ascii	"D11\000"
	.align	2
.LC59:
	.ascii	"D12\000"
	.align	2
.LC60:
	.ascii	"D13\000"
	.align	2
.LC61:
	.ascii	"D14\000"
	.align	2
.LC62:
	.ascii	"D15\000"
	.align	2
.LC63:
	.ascii	"D16\000"
	.align	2
.LC64:
	.ascii	"E1\000"
	.align	2
.LC65:
	.ascii	"E2\000"
	.align	2
.LC66:
	.ascii	"E3\000"
	.align	2
.LC67:
	.ascii	"E4\000"
	.align	2
.LC68:
	.ascii	"E5\000"
	.align	2
.LC69:
	.ascii	"E6\000"
	.align	2
.LC70:
	.ascii	"E7\000"
	.align	2
.LC71:
	.ascii	"E8\000"
	.align	2
.LC72:
	.ascii	"E9\000"
	.align	2
.LC73:
	.ascii	"E10\000"
	.align	2
.LC74:
	.ascii	"E11\000"
	.align	2
.LC75:
	.ascii	"E12\000"
	.align	2
.LC76:
	.ascii	"E13\000"
	.align	2
.LC77:
	.ascii	"E14\000"
	.align	2
.LC78:
	.ascii	"E15\000"
	.align	2
.LC79:
	.ascii	"E16\000"
	.align	2
.LC80:
	.ascii	"BR1\000"
	.align	2
.LC81:
	.ascii	"MR1\000"
	.align	2
.LC82:
	.ascii	"BR2\000"
	.align	2
.LC83:
	.ascii	"MR2\000"
	.align	2
.LC84:
	.ascii	"BR3\000"
	.align	2
.LC85:
	.ascii	"MR3\000"
	.align	2
.LC86:
	.ascii	"BR4\000"
	.align	2
.LC87:
	.ascii	"MR4\000"
	.align	2
.LC88:
	.ascii	"BR5\000"
	.align	2
.LC89:
	.ascii	"MR5\000"
	.align	2
.LC90:
	.ascii	"BR6\000"
	.align	2
.LC91:
	.ascii	"MR6\000"
	.align	2
.LC92:
	.ascii	"BR7\000"
	.align	2
.LC93:
	.ascii	"MR7\000"
	.align	2
.LC94:
	.ascii	"BR8\000"
	.align	2
.LC95:
	.ascii	"MR8\000"
	.align	2
.LC96:
	.ascii	"BR9\000"
	.align	2
.LC97:
	.ascii	"MR9\000"
	.align	2
.LC98:
	.ascii	"BR10\000"
	.align	2
.LC99:
	.ascii	"MR10\000"
	.align	2
.LC100:
	.ascii	"BR11\000"
	.align	2
.LC101:
	.ascii	"MR11\000"
	.align	2
.LC102:
	.ascii	"BR12\000"
	.align	2
.LC103:
	.ascii	"MR12\000"
	.align	2
.LC104:
	.ascii	"BR13\000"
	.align	2
.LC105:
	.ascii	"MR13\000"
	.align	2
.LC106:
	.ascii	"BR14\000"
	.align	2
.LC107:
	.ascii	"MR14\000"
	.align	2
.LC108:
	.ascii	"BR15\000"
	.align	2
.LC109:
	.ascii	"MR15\000"
	.align	2
.LC110:
	.ascii	"BR16\000"
	.align	2
.LC111:
	.ascii	"MR16\000"
	.align	2
.LC112:
	.ascii	"BR17\000"
	.align	2
.LC113:
	.ascii	"MR17\000"
	.align	2
.LC114:
	.ascii	"BR18\000"
	.align	2
.LC115:
	.ascii	"MR18\000"
	.align	2
.LC116:
	.ascii	"BR153\000"
	.align	2
.LC117:
	.ascii	"MR153\000"
	.align	2
.LC118:
	.ascii	"BR154\000"
	.align	2
.LC119:
	.ascii	"MR154\000"
	.align	2
.LC120:
	.ascii	"BR155\000"
	.align	2
.LC121:
	.ascii	"MR155\000"
	.align	2
.LC122:
	.ascii	"BR156\000"
	.align	2
.LC123:
	.ascii	"MR156\000"
	.align	2
.LC124:
	.ascii	"EN1\000"
	.align	2
.LC125:
	.ascii	"EX1\000"
	.align	2
.LC126:
	.ascii	"EN2\000"
	.align	2
.LC127:
	.ascii	"EX2\000"
	.align	2
.LC128:
	.ascii	"EN3\000"
	.align	2
.LC129:
	.ascii	"EX3\000"
	.align	2
.LC130:
	.ascii	"EN4\000"
	.align	2
.LC131:
	.ascii	"EX4\000"
	.align	2
.LC132:
	.ascii	"EN5\000"
	.align	2
.LC133:
	.ascii	"EX5\000"
	.align	2
.LC134:
	.ascii	"EN6\000"
	.align	2
.LC135:
	.ascii	"EX6\000"
	.align	2
.LC136:
	.ascii	"EN7\000"
	.align	2
.LC137:
	.ascii	"EX7\000"
	.align	2
.LC138:
	.ascii	"EN8\000"
	.align	2
.LC139:
	.ascii	"EX8\000"
	.align	2
.LC140:
	.ascii	"EN9\000"
	.align	2
.LC141:
	.ascii	"EX9\000"
	.align	2
.LC142:
	.ascii	"EN10\000"
	.align	2
.LC143:
	.ascii	"EX10\000"
	.text
	.align	2
	.global	init_tracka
	.type	init_tracka, %function
init_tracka:
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	ldr	sl, .L9
.L8:
	add	sl, pc, sl
	str	r0, [fp, #-20]
	ldr	r0, [fp, #-20]
	mov	r1, #0
	mov	r2, #6912
	bl	memset(PLT)
	ldr	r2, [fp, #-20]
	ldr	r3, .L9+4
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, [fp, #-20]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	add	r2, r3, #16
	ldr	r3, [fp, #-20]
	str	r2, [r3, #16]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-20]
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	ldr	r2, [fp, #-20]
	str	r3, [r2, #24]
	ldr	r2, [fp, #-20]
	mov	r3, #218
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, .L9+8
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	mov	r3, #1
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, [fp, #-20]
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #6336
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #6336
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	mov	r3, #500
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	ldr	r3, .L9+12
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	mov	r3, #2
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	ldr	r3, [fp, #-20]
	add	r3, r3, #144
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	ldr	r3, [fp, #-20]
	add	r3, r3, #96
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	mov	r3, #62
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	ldr	r3, .L9+16
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	mov	r3, #3
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	ldr	r3, [fp, #-20]
	add	r3, r3, #96
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	ldr	r3, [fp, #-20]
	add	r3, r3, #1440
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	ldr	r3, [fp, #-20]
	add	r3, r3, #144
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	ldr	r3, [fp, #-20]
	add	r3, r3, #1488
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	mov	r3, #440
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	ldr	r3, .L9+20
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	mov	r3, #4
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	ldr	r3, [fp, #-20]
	add	r3, r3, #240
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	ldr	r3, [fp, #-20]
	add	r3, r3, #4032
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	ldr	r3, [fp, #-20]
	add	r3, r3, #192
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	ldr	r3, [fp, #-20]
	add	r3, r3, #4080
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	mov	r3, #216
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	ldr	r3, .L9+24
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	mov	r3, #5
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	ldr	r3, [fp, #-20]
	add	r3, r3, #192
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	ldr	r3, [fp, #-20]
	add	r3, r3, #1152
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	ldr	r3, [fp, #-20]
	add	r3, r3, #240
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	ldr	r3, [fp, #-20]
	add	r3, r3, #1200
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	ldr	r3, .L9+28
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	ldr	r3, .L9+32
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	mov	r3, #6
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	ldr	r3, [fp, #-20]
	add	r3, r3, #336
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	ldr	r3, [fp, #-20]
	add	r3, r3, #1248
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	ldr	r3, [fp, #-20]
	add	r3, r3, #288
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	ldr	r3, [fp, #-20]
	add	r3, r3, #1296
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	ldr	r3, .L9+128
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	ldr	r3, .L9+36
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	mov	r3, #7
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	ldr	r3, [fp, #-20]
	add	r3, r3, #288
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	ldr	r3, [fp, #-20]
	add	r3, r3, #3936
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	ldr	r3, [fp, #-20]
	add	r3, r3, #336
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	ldr	r3, [fp, #-20]
	add	r3, r3, #3984
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	mov	r3, #211
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	ldr	r3, .L9+40
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	mov	r3, #8
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	ldr	r3, [fp, #-20]
	add	r3, r3, #432
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	ldr	r3, [fp, #-20]
	add	r3, r3, #1056
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	ldr	r3, [fp, #-20]
	add	r3, r3, #384
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	ldr	r3, [fp, #-20]
	add	r3, r3, #1104
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	ldr	r3, .L9+44
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	ldr	r3, .L9+48
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	mov	r3, #9
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	ldr	r3, [fp, #-20]
	add	r3, r3, #384
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	ldr	r3, [fp, #-20]
	add	r3, r3, #3840
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	ldr	r3, [fp, #-20]
	add	r3, r3, #432
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	ldr	r3, [fp, #-20]
	add	r3, r3, #3888
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	mov	r3, #210
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	ldr	r3, .L9+52
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	mov	r3, #10
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	ldr	r3, [fp, #-20]
	add	r3, r3, #528
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	ldr	r3, [fp, #-20]
	add	r3, r3, #3840
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	ldr	r3, [fp, #-20]
	add	r3, r3, #480
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	ldr	r3, [fp, #-20]
	add	r3, r3, #3888
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	ldr	r3, .L9+164
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	ldr	r3, .L9+56
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	mov	r3, #11
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	ldr	r3, [fp, #-20]
	add	r3, r3, #480
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	ldr	r3, [fp, #-20]
	add	r3, r3, #6592
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	ldr	r3, [fp, #-20]
	add	r3, r3, #528
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	ldr	r3, [fp, #-20]
	add	r3, r3, #6656
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	mov	r3, #60
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	ldr	r3, .L9+60
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	mov	r3, #12
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	ldr	r3, [fp, #-20]
	add	r3, r3, #624
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	ldr	r3, [fp, #-20]
	add	r3, r3, #576
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	mov	r3, #215
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	ldr	r3, .L9+64
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	mov	r3, #13
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	ldr	r3, [fp, #-20]
	add	r3, r3, #576
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	ldr	r3, [fp, #-20]
	add	r3, r3, #6208
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	ldr	r3, [fp, #-20]
	add	r3, r3, #624
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	ldr	r3, [fp, #-20]
	add	r3, r3, #6272
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	mov	r3, #320
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	ldr	r3, .L9+68
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	mov	r3, #14
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	ldr	r3, [fp, #-20]
	add	r3, r3, #720
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	ldr	r3, [fp, #-20]
	add	r3, r3, #6400
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	ldr	r3, [fp, #-20]
	add	r3, r3, #672
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	ldr	r3, [fp, #-20]
	add	r3, r3, #6464
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	mov	r3, #145
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	ldr	r3, .L9+72
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	mov	r3, #15
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	ldr	r3, [fp, #-20]
	add	r3, r3, #672
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	ldr	r3, [fp, #-20]
	add	r3, r3, #720
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	ldr	r3, .L9+76
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	ldr	r3, .L9+80
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	mov	r3, #16
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	ldr	r3, [fp, #-20]
	add	r3, r3, #816
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	ldr	r3, [fp, #-20]
	add	r3, r3, #2880
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	ldr	r3, [fp, #-20]
	add	r3, r3, #768
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	ldr	r3, [fp, #-20]
	add	r3, r3, #2928
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	ldr	r3, .L9+84
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	ldr	r3, .L9+88
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	mov	r3, #17
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	ldr	r3, [fp, #-20]
	add	r3, r3, #768
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	ldr	r3, [fp, #-20]
	add	r3, r3, #816
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	mov	r3, #225
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	ldr	r3, .L9+92
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	mov	r3, #18
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	ldr	r3, [fp, #-20]
	add	r3, r3, #912
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	ldr	r3, [fp, #-20]
	add	r3, r3, #1536
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	ldr	r3, [fp, #-20]
	add	r3, r3, #864
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	ldr	r3, [fp, #-20]
	add	r3, r3, #1584
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	mov	r3, #230
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	ldr	r3, .L9+96
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	mov	r3, #19
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	ldr	r3, [fp, #-20]
	add	r3, r3, #864
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	ldr	r3, [fp, #-20]
	add	r3, r3, #912
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	mov	r3, #220
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	ldr	r3, .L9+100
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	mov	r3, #20
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	ldr	r3, [fp, #-20]
	add	r3, r3, #1008
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	ldr	r3, [fp, #-20]
	add	r3, r3, #2448
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	ldr	r3, [fp, #-20]
	add	r3, r3, #960
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	ldr	r3, [fp, #-20]
	add	r3, r3, #2400
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	ldr	r3, .L9+232
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	ldr	r3, .L9+104
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	mov	r3, #21
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	ldr	r3, [fp, #-20]
	add	r3, r3, #960
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	ldr	r3, [fp, #-20]
	add	r3, r3, #1008
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	mov	r3, #214
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	ldr	r3, .L9+108
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	mov	r3, #22
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	ldr	r3, [fp, #-20]
	add	r3, r3, #1104
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	ldr	r3, [fp, #-20]
	add	r3, r3, #384
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	ldr	r3, [fp, #-20]
	add	r3, r3, #1056
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	ldr	r3, [fp, #-20]
	add	r3, r3, #432
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	ldr	r3, .L9+44
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	ldr	r3, .L9+112
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	mov	r3, #23
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	ldr	r3, [fp, #-20]
	add	r3, r3, #1056
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	ldr	r3, [fp, #-20]
	add	r3, r3, #6528
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	ldr	r3, [fp, #-20]
	add	r3, r3, #1104
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	ldr	r3, [fp, #-20]
	add	r3, r3, #6528
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	mov	r3, #60
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	ldr	r3, .L9+116
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	mov	r3, #24
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	ldr	r3, [fp, #-20]
	add	r3, r3, #1200
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	ldr	r3, [fp, #-20]
	add	r3, r3, #240
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	ldr	r3, [fp, #-20]
	add	r3, r3, #1152
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	ldr	r3, [fp, #-20]
	add	r3, r3, #192
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	ldr	r3, .L9+28
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	ldr	r3, .L9+120
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	mov	r3, #25
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	ldr	r3, [fp, #-20]
	add	r3, r3, #1152
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	ldr	r3, [fp, #-20]
	add	r3, r3, #6720
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	b	.L10
.L11:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.L8+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	649
	.word	.LC6(GOTOFF)
	.word	.LC7(GOTOFF)
	.word	.LC8(GOTOFF)
	.word	289
	.word	.LC9(GOTOFF)
	.word	.LC10(GOTOFF)
	.word	.LC11(GOTOFF)
	.word	.LC12(GOTOFF)
	.word	.LC13(GOTOFF)
	.word	.LC14(GOTOFF)
	.word	.LC15(GOTOFF)
	.word	394
	.word	.LC16(GOTOFF)
	.word	398
	.word	.LC17(GOTOFF)
	.word	.LC18(GOTOFF)
	.word	.LC19(GOTOFF)
	.word	.LC20(GOTOFF)
	.word	.LC21(GOTOFF)
	.word	.LC22(GOTOFF)
	.word	.LC23(GOTOFF)
	.word	.LC24(GOTOFF)
	.word	.LC25(GOTOFF)
	.word	.LC26(GOTOFF)
	.word	473
	.word	.LC27(GOTOFF)
	.word	.LC28(GOTOFF)
	.word	.LC29(GOTOFF)
	.word	.LC30(GOTOFF)
	.word	.LC31(GOTOFF)
	.word	.LC32(GOTOFF)
	.word	.LC33(GOTOFF)
	.word	.LC34(GOTOFF)
	.word	410
	.word	.LC35(GOTOFF)
	.word	.LC36(GOTOFF)
	.word	.LC37(GOTOFF)
	.word	411
	.word	.LC38(GOTOFF)
	.word	.LC39(GOTOFF)
	.word	.LC40(GOTOFF)
	.word	305
	.word	.LC41(GOTOFF)
	.word	.LC42(GOTOFF)
	.word	.LC43(GOTOFF)
	.word	314
	.word	.LC44(GOTOFF)
	.word	877
	.word	.LC45(GOTOFF)
	.word	.LC46(GOTOFF)
	.word	405
	.word	.LC47(GOTOFF)
	.word	.LC48(GOTOFF)
	.word	.LC49(GOTOFF)
	.word	.LC50(GOTOFF)
.L10:
	add	r2, r3, #1200
	ldr	r3, [fp, #-20]
	add	r3, r3, #1200
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	ldr	r3, [fp, #-20]
	add	r3, r3, #6720
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	mov	r3, #70
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	ldr	r3, .L9+124
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	mov	r3, #26
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	ldr	r3, [fp, #-20]
	add	r3, r3, #1296
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	ldr	r3, [fp, #-20]
	add	r3, r3, #288
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	ldr	r3, [fp, #-20]
	add	r3, r3, #1248
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	ldr	r3, [fp, #-20]
	add	r3, r3, #336
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	ldr	r3, .L9+128
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	ldr	r3, .L9+132
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	mov	r3, #27
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	ldr	r3, [fp, #-20]
	add	r3, r3, #1248
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	ldr	r3, [fp, #-20]
	add	r3, r3, #6784
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	ldr	r3, [fp, #-20]
	add	r3, r3, #1296
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	ldr	r3, [fp, #-20]
	add	r3, r3, #6848
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	mov	r3, #70
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	ldr	r3, .L9+136
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	mov	r3, #28
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	ldr	r3, [fp, #-20]
	add	r3, r3, #1392
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	ldr	r3, [fp, #-20]
	add	r3, r3, #1344
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	mov	r3, #224
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	ldr	r3, .L9+140
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	mov	r3, #29
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	ldr	r3, [fp, #-20]
	add	r3, r3, #1344
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	ldr	r3, [fp, #-20]
	add	r3, r3, #2976
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	ldr	r3, [fp, #-20]
	add	r3, r3, #1392
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	ldr	r3, [fp, #-20]
	add	r3, r3, #3024
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	mov	r3, #202
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	ldr	r3, .L9+144
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	mov	r3, #30
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	ldr	r3, [fp, #-20]
	add	r3, r3, #1488
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	ldr	r3, [fp, #-20]
	add	r3, r3, #144
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	ldr	r3, [fp, #-20]
	add	r3, r3, #1440
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	ldr	r3, [fp, #-20]
	add	r3, r3, #96
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	mov	r3, #440
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	ldr	r3, .L9+148
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	mov	r3, #31
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	ldr	r3, [fp, #-20]
	add	r3, r3, #1440
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	ldr	r3, [fp, #-20]
	add	r3, r3, #1488
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	mov	r3, #70
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	ldr	r3, .L9+152
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	mov	r3, #32
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	ldr	r3, [fp, #-20]
	add	r3, r3, #1584
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	ldr	r3, [fp, #-20]
	add	r3, r3, #864
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	ldr	r3, [fp, #-20]
	add	r3, r3, #1536
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	ldr	r3, [fp, #-20]
	add	r3, r3, #912
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	mov	r3, #230
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	ldr	r3, .L9+156
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	mov	r3, #33
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	ldr	r3, [fp, #-20]
	add	r3, r3, #1536
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	ldr	r3, [fp, #-20]
	add	r3, r3, #1584
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	mov	r3, #228
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	ldr	r3, .L9+160
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	mov	r3, #34
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	ldr	r3, [fp, #-20]
	add	r3, r3, #1680
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	ldr	r3, [fp, #-20]
	add	r3, r3, #6144
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	ldr	r3, [fp, #-20]
	add	r3, r3, #1632
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	ldr	r3, [fp, #-20]
	add	r3, r3, #6144
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	ldr	r3, .L9+164
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	ldr	r3, .L9+168
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	mov	r3, #35
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	ldr	r3, [fp, #-20]
	add	r3, r3, #1632
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	ldr	r3, [fp, #-20]
	add	r3, r3, #1680
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	mov	r3, #226
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	ldr	r3, .L9+172
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	mov	r3, #36
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	ldr	r3, [fp, #-20]
	add	r3, r3, #1776
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	ldr	r3, [fp, #-20]
	add	r3, r3, #1728
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	mov	r3, #79
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	ldr	r3, .L9+176
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	mov	r3, #37
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	ldr	r3, [fp, #-20]
	add	r3, r3, #1728
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	ldr	r3, [fp, #-20]
	add	r3, r3, #1776
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	ldr	r3, .L9+180
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	ldr	r3, .L9+184
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	mov	r3, #38
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	ldr	r3, [fp, #-20]
	add	r3, r3, #1872
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	ldr	r3, [fp, #-20]
	add	r3, r3, #1824
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	mov	r3, #215
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	ldr	r3, .L9+188
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	mov	r3, #39
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	ldr	r3, [fp, #-20]
	add	r3, r3, #1824
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	ldr	r3, [fp, #-20]
	add	r3, r3, #4080
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	ldr	r3, [fp, #-20]
	add	r3, r3, #1872
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	ldr	r3, [fp, #-20]
	add	r3, r3, #4032
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	mov	r3, #145
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	ldr	r3, .L9+192
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	mov	r3, #40
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	ldr	r3, [fp, #-20]
	add	r3, r3, #1968
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	ldr	r3, [fp, #-20]
	add	r3, r3, #1920
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	ldr	r3, .L9+196
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	ldr	r3, .L9+200
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	mov	r3, #41
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	ldr	r3, [fp, #-20]
	add	r3, r3, #1920
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	ldr	r3, [fp, #-20]
	add	r3, r3, #1968
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	mov	r3, #146
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	ldr	r3, .L9+204
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	mov	r3, #42
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	ldr	r3, [fp, #-20]
	add	r3, r3, #2064
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	ldr	r3, [fp, #-20]
	add	r3, r3, #2016
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	mov	r3, #140
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	ldr	r3, .L9+208
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	mov	r3, #43
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	ldr	r3, [fp, #-20]
	add	r3, r3, #2016
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	ldr	r3, [fp, #-20]
	add	r3, r3, #2064
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	ldr	r3, .L9+212
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	ldr	r3, .L9+216
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	mov	r3, #44
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	ldr	r3, [fp, #-20]
	add	r3, r3, #2160
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	ldr	r3, [fp, #-20]
	add	r3, r3, #3408
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	ldr	r3, [fp, #-20]
	add	r3, r3, #2112
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	ldr	r3, [fp, #-20]
	add	r3, r3, #3360
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	ldr	r3, .L9+220
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	ldr	r3, .L9+224
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	mov	r3, #45
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	ldr	r3, [fp, #-20]
	add	r3, r3, #2112
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	ldr	r3, [fp, #-20]
	add	r3, r3, #2160
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	mov	r3, #60
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	ldr	r3, .L9+228
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	mov	r3, #46
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	ldr	r3, [fp, #-20]
	add	r3, r3, #2256
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	ldr	r3, [fp, #-20]
	add	r3, r3, #2784
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	ldr	r3, [fp, #-20]
	add	r3, r3, #2208
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	ldr	r3, [fp, #-20]
	add	r3, r3, #2832
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	ldr	r3, .L9+232
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	ldr	r3, .L9+236
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	mov	r3, #47
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	ldr	r3, [fp, #-20]
	add	r3, r3, #2208
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	ldr	r3, [fp, #-20]
	add	r3, r3, #2256
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	mov	r3, #223
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	ldr	r3, .L9+240
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	mov	r3, #48
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	ldr	r3, [fp, #-20]
	add	r3, r3, #2352
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	ldr	r3, [fp, #-20]
	add	r3, r3, #2304
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	mov	r3, #227
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	ldr	r3, .L9+244
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	mov	r3, #49
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	ldr	r3, [fp, #-20]
	add	r3, r3, #2304
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	ldr	r3, [fp, #-20]
	add	r3, r3, #3168
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	ldr	r3, [fp, #-20]
	add	r3, r3, #2352
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	ldr	r3, [fp, #-20]
	add	r3, r3, #3216
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	mov	r3, #200
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	ldr	r3, .L9+248
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	mov	r3, #50
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	ldr	r3, [fp, #-20]
	add	r3, r3, #2448
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	ldr	r3, [fp, #-20]
	add	r3, r3, #2400
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	mov	r3, #223
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	ldr	r3, .L12
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	mov	r3, #51
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	ldr	r3, [fp, #-20]
	add	r3, r3, #2400
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	ldr	r3, [fp, #-20]
	add	r3, r3, #960
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	ldr	r3, [fp, #-20]
	add	r3, r3, #2448
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	ldr	r3, [fp, #-20]
	add	r3, r3, #1008
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	ldr	r3, .L12+4
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	ldr	r3, .L12+8
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	mov	r3, #52
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	ldr	r3, [fp, #-20]
	add	r3, r3, #2544
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	ldr	r3, [fp, #-20]
	add	r3, r3, #3264
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	ldr	r3, [fp, #-20]
	add	r3, r3, #2496
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	ldr	r3, [fp, #-20]
	add	r3, r3, #3312
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	ldr	r3, .L12+128
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	ldr	r3, .L12+12
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	mov	r3, #53
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	ldr	r3, [fp, #-20]
	add	r3, r3, #2496
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	ldr	r3, [fp, #-20]
	add	r3, r3, #2544
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	mov	r3, #213
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	ldr	r3, .L12+16
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	mov	r3, #54
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	ldr	r3, [fp, #-20]
	add	r3, r3, #2640
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	ldr	r3, [fp, #-20]
	add	r3, r3, #2592
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	ldr	r3, .L12+20
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	ldr	r3, .L12+24
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	mov	r3, #55
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	ldr	r3, [fp, #-20]
	add	r3, r3, #2592
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	ldr	r3, [fp, #-20]
	add	r3, r3, #3360
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	ldr	r3, [fp, #-20]
	add	r3, r3, #2640
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	ldr	r3, [fp, #-20]
	add	r3, r3, #3408
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	ldr	r3, .L12+128
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	ldr	r3, .L12+28
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	mov	r3, #56
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	ldr	r3, [fp, #-20]
	add	r3, r3, #2736
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	ldr	r3, [fp, #-20]
	add	r3, r3, #3552
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	ldr	r3, [fp, #-20]
	add	r3, r3, #2688
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	ldr	r3, [fp, #-20]
	add	r3, r3, #3600
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	ldr	r3, .L12+32
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	ldr	r3, .L12+36
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	mov	r3, #57
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	ldr	r3, [fp, #-20]
	add	r3, r3, #2688
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	ldr	r3, [fp, #-20]
	add	r3, r3, #2736
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	ldr	r3, .L12+216
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	ldr	r3, .L12+40
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	mov	r3, #58
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	ldr	r3, [fp, #-20]
	add	r3, r3, #2832
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	ldr	r3, [fp, #-20]
	add	r3, r3, #2208
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	ldr	r3, [fp, #-20]
	add	r3, r3, #2784
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	ldr	r3, [fp, #-20]
	add	r3, r3, #2256
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	ldr	r3, .L12+4
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	ldr	r3, .L12+44
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	mov	r3, #59
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	ldr	r3, [fp, #-20]
	add	r3, r3, #2784
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	ldr	r3, [fp, #-20]
	add	r3, r3, #2832
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	mov	r3, #220
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	ldr	r3, .L12+48
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	mov	r3, #60
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	ldr	r3, [fp, #-20]
	add	r3, r3, #2928
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	ldr	r3, [fp, #-20]
	add	r3, r3, #768
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	ldr	r3, [fp, #-20]
	add	r3, r3, #2880
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	ldr	r3, [fp, #-20]
	add	r3, r3, #816
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	ldr	r3, .L12+52
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	ldr	r3, .L12+56
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	mov	r3, #61
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	ldr	r3, [fp, #-20]
	add	r3, r3, #2880
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	ldr	r3, [fp, #-20]
	add	r3, r3, #2928
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	mov	r3, #225
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	ldr	r3, .L12+60
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	mov	r3, #62
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	ldr	r3, [fp, #-20]
	add	r3, r3, #3024
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	ldr	r3, [fp, #-20]
	add	r3, r3, #1392
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	ldr	r3, [fp, #-20]
	add	r3, r3, #2976
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	ldr	r3, [fp, #-20]
	add	r3, r3, #1344
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	mov	r3, #202
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	ldr	r3, .L12+64
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	mov	r3, #63
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	ldr	r3, [fp, #-20]
	add	r3, r3, #2976
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	ldr	r3, [fp, #-20]
	add	r3, r3, #3024
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	mov	r3, #230
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	ldr	r3, .L12+68
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	mov	r3, #64
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	ldr	r3, [fp, #-20]
	add	r3, r3, #3120
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	ldr	r3, [fp, #-20]
	add	r3, r3, #3072
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	mov	r3, #222
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	ldr	r3, .L12+72
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	mov	r3, #65
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	ldr	r3, [fp, #-20]
	add	r3, r3, #3072
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	ldr	r3, [fp, #-20]
	add	r3, r3, #3792
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	ldr	r3, [fp, #-20]
	add	r3, r3, #3120
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	ldr	r3, [fp, #-20]
	add	r3, r3, #3744
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	mov	r3, #203
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	ldr	r3, .L12+76
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	mov	r3, #66
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	ldr	r3, [fp, #-20]
	add	r3, r3, #3216
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	ldr	r3, [fp, #-20]
	add	r3, r3, #2352
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	ldr	r3, [fp, #-20]
	add	r3, r3, #3168
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	ldr	r3, [fp, #-20]
	add	r3, r3, #2304
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	mov	r3, #200
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	ldr	r3, .L12+80
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	mov	r3, #67
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	ldr	r3, [fp, #-20]
	add	r3, r3, #3168
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	ldr	r3, [fp, #-20]
	add	r3, r3, #3216
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	mov	r3, #220
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	ldr	r3, .L12+84
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	mov	r3, #68
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	ldr	r3, [fp, #-20]
	add	r3, r3, #3312
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	ldr	r3, [fp, #-20]
	add	r3, r3, #2496
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	ldr	r3, [fp, #-20]
	add	r3, r3, #3264
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	ldr	r3, [fp, #-20]
	add	r3, r3, #2544
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	ldr	r3, .L12+128
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	ldr	r3, .L12+88
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	mov	r3, #69
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	ldr	r3, [fp, #-20]
	add	r3, r3, #3264
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	ldr	r3, [fp, #-20]
	add	r3, r3, #3312
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	mov	r3, #74
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	ldr	r3, .L12+92
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	mov	r3, #70
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	ldr	r3, [fp, #-20]
	add	r3, r3, #3408
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	ldr	r3, [fp, #-20]
	add	r3, r3, #2640
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	ldr	r3, [fp, #-20]
	add	r3, r3, #3360
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	ldr	r3, [fp, #-20]
	add	r3, r3, #2592
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	ldr	r3, .L12+128
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	ldr	r3, .L12+96
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	mov	r3, #71
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	ldr	r3, [fp, #-20]
	add	r3, r3, #3360
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	ldr	r3, [fp, #-20]
	add	r3, r3, #2112
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	ldr	r3, [fp, #-20]
	add	r3, r3, #3408
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	ldr	r3, [fp, #-20]
	add	r3, r3, #2160
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	ldr	r3, .L12+100
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	ldr	r3, .L12+104
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	mov	r3, #72
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	ldr	r3, [fp, #-20]
	add	r3, r3, #3504
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	ldr	r3, [fp, #-20]
	add	r3, r3, #3456
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	mov	r3, #215
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	ldr	r3, .L12+108
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	mov	r3, #73
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	ldr	r3, [fp, #-20]
	add	r3, r3, #3456
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	ldr	r3, [fp, #-20]
	add	r3, r3, #3696
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	ldr	r3, [fp, #-20]
	add	r3, r3, #3504
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	ldr	r3, [fp, #-20]
	add	r3, r3, #3648
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	ldr	r3, .L12+128
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	ldr	r3, .L12+112
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	mov	r3, #74
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	ldr	r3, [fp, #-20]
	add	r3, r3, #3600
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	ldr	r3, [fp, #-20]
	add	r3, r3, #2688
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	ldr	r3, [fp, #-20]
	add	r3, r3, #3552
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	ldr	r3, [fp, #-20]
	add	r3, r3, #2736
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	ldr	r3, .L12+32
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	ldr	r3, .L12+116
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	mov	r3, #75
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	ldr	r3, [fp, #-20]
	add	r3, r3, #3552
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	ldr	r3, [fp, #-20]
	add	r3, r3, #3600
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	mov	r3, #65
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	ldr	r3, .L12+120
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	mov	r3, #76
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	ldr	r3, [fp, #-20]
	add	r3, r3, #3696
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	ldr	r3, [fp, #-20]
	b	.L13
.L14:
	.align	2
.L12:
	.word	.LC51(GOTOFF)
	.word	405
	.word	.LC52(GOTOFF)
	.word	.LC53(GOTOFF)
	.word	.LC54(GOTOFF)
	.word	290
	.word	.LC55(GOTOFF)
	.word	.LC56(GOTOFF)
	.word	361
	.word	.LC57(GOTOFF)
	.word	.LC58(GOTOFF)
	.word	.LC59(GOTOFF)
	.word	.LC60(GOTOFF)
	.word	398
	.word	.LC61(GOTOFF)
	.word	.LC62(GOTOFF)
	.word	.LC63(GOTOFF)
	.word	.LC64(GOTOFF)
	.word	.LC65(GOTOFF)
	.word	.LC66(GOTOFF)
	.word	.LC67(GOTOFF)
	.word	.LC68(GOTOFF)
	.word	.LC69(GOTOFF)
	.word	.LC70(GOTOFF)
	.word	.LC71(GOTOFF)
	.word	877
	.word	.LC72(GOTOFF)
	.word	.LC73(GOTOFF)
	.word	.LC74(GOTOFF)
	.word	.LC75(GOTOFF)
	.word	.LC76(GOTOFF)
	.word	.LC77(GOTOFF)
	.word	375
	.word	.LC78(GOTOFF)
	.word	.LC79(GOTOFF)
	.word	.LC80(GOTOFF)
	.word	410
	.word	.LC81(GOTOFF)
	.word	.LC82(GOTOFF)
	.word	.LC83(GOTOFF)
	.word	.LC84(GOTOFF)
	.word	.LC85(GOTOFF)
	.word	.LC86(GOTOFF)
	.word	394
	.word	.LC87(GOTOFF)
	.word	.LC88(GOTOFF)
	.word	.LC89(GOTOFF)
	.word	.LC90(GOTOFF)
	.word	338
	.word	.LC91(GOTOFF)
	.word	.LC92(GOTOFF)
	.word	334
	.word	.LC93(GOTOFF)
	.word	.LC94(GOTOFF)
	.word	291
	.word	.LC95(GOTOFF)
.L13:
	add	r3, r3, #3648
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	mov	r3, #62
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	ldr	r3, .L12+124
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	mov	r3, #77
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	ldr	r3, [fp, #-20]
	add	r3, r3, #3648
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	ldr	r3, [fp, #-20]
	add	r3, r3, #3504
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	ldr	r3, [fp, #-20]
	add	r3, r3, #3696
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	ldr	r3, [fp, #-20]
	add	r3, r3, #3456
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	ldr	r3, .L12+128
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	ldr	r3, .L12+132
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	mov	r3, #78
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	ldr	r3, [fp, #-20]
	add	r3, r3, #3792
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	ldr	r3, [fp, #-20]
	add	r3, r3, #3744
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	mov	r3, #230
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	ldr	r3, .L12+136
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	mov	r3, #79
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	ldr	r3, [fp, #-20]
	add	r3, r3, #3744
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	ldr	r3, [fp, #-20]
	add	r3, r3, #3120
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	ldr	r3, [fp, #-20]
	add	r3, r3, #3792
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	ldr	r3, [fp, #-20]
	add	r3, r3, #3072
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	mov	r3, #203
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, .L12+140
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	mov	r3, #1
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, [fp, #-20]
	add	r3, r3, #3888
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, [fp, #-20]
	add	r3, r3, #480
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, [fp, #-20]
	add	r3, r3, #3840
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, [fp, #-20]
	add	r3, r3, #528
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, .L12+144
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, [fp, #-20]
	add	r3, r3, #432
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, [fp, #-20]
	add	r3, r3, #3840
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, [fp, #-20]
	add	r3, r3, #384
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	mov	r3, #210
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	ldr	r3, .L12+148
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	mov	r3, #3
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	mov	r3, #1
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	ldr	r3, [fp, #-20]
	add	r3, r3, #3840
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	ldr	r3, [fp, #-20]
	add	r3, r3, #3936
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	ldr	r3, [fp, #-20]
	add	r3, r3, #3888
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	ldr	r3, [fp, #-20]
	add	r3, r3, #3984
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	mov	r3, #191
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, .L12+152
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	mov	r3, #2
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, [fp, #-20]
	add	r3, r3, #3984
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, [fp, #-20]
	add	r3, r3, #3888
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, [fp, #-20]
	add	r3, r3, #3936
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, [fp, #-20]
	add	r3, r3, #3840
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	mov	r3, #191
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, [fp, #-20]
	add	r3, r3, #336
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, [fp, #-20]
	add	r3, r3, #3936
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, [fp, #-20]
	add	r3, r3, #288
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	mov	r3, #211
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	ldr	r3, .L12+156
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	mov	r3, #3
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	mov	r3, #2
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	ldr	r3, [fp, #-20]
	add	r3, r3, #3936
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	ldr	r3, [fp, #-20]
	add	r3, r3, #4032
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	ldr	r3, [fp, #-20]
	add	r3, r3, #3984
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	ldr	r3, [fp, #-20]
	add	r3, r3, #4080
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	mov	r3, #182
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, .L12+160
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	mov	r3, #3
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, [fp, #-20]
	add	r3, r3, #4080
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, [fp, #-20]
	add	r3, r3, #192
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, [fp, #-20]
	add	r3, r3, #4032
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, [fp, #-20]
	add	r3, r3, #240
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	mov	r3, #216
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, [fp, #-20]
	add	r3, r3, #3984
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, [fp, #-20]
	add	r3, r3, #4032
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, [fp, #-20]
	add	r3, r3, #3936
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	mov	r3, #182
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	ldr	r3, .L12+164
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	mov	r3, #3
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	mov	r3, #3
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	ldr	r3, [fp, #-20]
	add	r3, r3, #4032
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	ldr	r3, [fp, #-20]
	add	r3, r3, #1872
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	ldr	r3, [fp, #-20]
	add	r3, r3, #4080
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	ldr	r3, [fp, #-20]
	add	r3, r3, #1824
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	mov	r3, #145
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4096
	add	r2, r2, #32
	ldr	r3, .L12+168
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	mov	r2, #4
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4096
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4096
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #720
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4096
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #672
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	ldr	r2, .L12+172
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4096
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #576
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4096
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #624
	str	r2, [r3, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	mov	r2, #215
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4160
	add	r2, r2, #16
	ldr	r3, .L12+176
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	mov	r2, #4
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4160
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4160
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4160
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4160
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	mov	r2, #185
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, .L12+180
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	mov	r3, #5
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, [fp, #-20]
	add	r3, r3, #1680
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, [fp, #-20]
	add	r3, r3, #1632
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	mov	r3, #226
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, .L12+204
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	add	r2, r2, #48
	ldr	r3, .L12+184
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	mov	r2, #5
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #4224
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	mov	r2, #187
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4288
	add	r2, r2, #32
	ldr	r3, .L12+188
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	mov	r2, #6
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4288
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4288
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #2256
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4288
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #2208
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	mov	r2, #223
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4288
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4288
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4288
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	ldr	r2, .L12+192
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4352
	add	r2, r2, #16
	ldr	r3, .L12+196
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	mov	r2, #6
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4352
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4352
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #1728
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4352
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #1776
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	mov	r2, #79
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, .L12+200
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	mov	r3, #7
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, [fp, #-20]
	add	r3, r3, #2832
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, [fp, #-20]
	add	r3, r3, #2784
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	mov	r3, #220
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, .L12+204
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	add	r2, r2, #48
	ldr	r3, .L12+208
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	mov	r2, #7
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #4416
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #3600
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #3552
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	mov	r2, #65
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4480
	add	r2, r2, #32
	ldr	r3, .L12+212
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	mov	r2, #8
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4480
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4480
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #2736
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4480
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #2688
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	ldr	r2, .L12+216
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4480
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #3456
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4480
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #3504
	str	r2, [r3, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	mov	r2, #215
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4544
	add	r2, r2, #16
	ldr	r3, .L12+220
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	mov	r2, #8
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4544
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4544
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4544
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #4608
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	mov	r2, #193
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, .L15
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	mov	r3, #9
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, [fp, #-20]
	add	r3, r3, #2592
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, [fp, #-20]
	add	r3, r3, #2640
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, .L15+4
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, [fp, #-20]
	add	r3, r3, #2544
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, [fp, #-20]
	add	r3, r3, #2496
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	mov	r3, #213
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	add	r2, r2, #48
	ldr	r3, .L15+8
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	mov	r2, #9
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #4608
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	mov	r2, #193
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4672
	add	r2, r2, #32
	ldr	r3, .L15+12
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	mov	r2, #10
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4672
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4672
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #2400
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4672
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #2448
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	mov	r2, #223
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4672
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #3216
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4672
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #3168
	str	r2, [r3, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	mov	r2, #220
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4736
	add	r2, r2, #16
	ldr	r3, .L15+16
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	mov	r2, #10
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4736
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4736
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #3312
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4736
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #3264
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	mov	r2, #74
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, .L15+20
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	mov	r3, #11
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	mov	r3, #190
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, .L15+24
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	add	r2, r2, #48
	ldr	r3, .L15+28
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	mov	r2, #11
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #4800
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #2160
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #2112
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	mov	r2, #60
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4864
	add	r2, r2, #32
	ldr	r3, .L15+32
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	mov	r2, #12
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4864
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #16
	str	r2, [r3, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4864
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #48
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	mov	r2, #218
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4864
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4864
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4864
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	mov	r2, #185
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4928
	add	r2, r2, #16
	ldr	r3, .L15+36
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	mov	r2, #12
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4928
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4928
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4928
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4928
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	mov	r2, #190
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, .L15+40
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	mov	r3, #13
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, [fp, #-20]
	add	r3, r3, #1008
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, [fp, #-20]
	add	r3, r3, #960
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	mov	r3, #214
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, [fp, #-20]
	add	r3, r3, #3744
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, [fp, #-20]
	add	r3, r3, #3792
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	mov	r3, #230
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	add	r2, r2, #48
	ldr	r3, .L15+44
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	mov	r2, #13
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #4992
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #2016
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #2064
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	mov	r2, #140
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5056
	add	r2, r2, #32
	ldr	r3, .L15+48
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	mov	r2, #14
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5056
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5056
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5056
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5056
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	ldr	r2, .L15+24
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5056
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #2064
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5056
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #2016
	str	r2, [r3, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	ldr	r2, .L15+52
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5120
	add	r2, r2, #16
	ldr	r3, .L15+56
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	mov	r2, #14
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5120
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5120
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #96
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5120
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #144
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	mov	r2, #62
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, .L15+60
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	mov	r3, #15
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, [fp, #-20]
	add	r3, r3, #1776
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, [fp, #-20]
	add	r3, r3, #1728
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, .L15+64
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, [fp, #-20]
	add	r3, r3, #1920
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, [fp, #-20]
	add	r3, r3, #1968
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, .L15+68
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	add	r2, r2, #48
	ldr	r3, .L15+72
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	mov	r2, #15
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #5184
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #1488
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #1440
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	mov	r2, #70
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5248
	add	r2, r2, #32
	ldr	r3, .L15+76
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	mov	r2, #16
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5248
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5248
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #816
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5248
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #768
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	mov	r2, #225
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5248
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #912
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5248
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #864
	str	r2, [r3, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	mov	r2, #220
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5312
	add	r2, r2, #16
	ldr	r3, .L15+80
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	mov	r2, #16
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5312
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5312
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #1968
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5312
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #1920
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	mov	r2, #146
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, .L15+84
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	mov	r3, #17
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, [fp, #-20]
	add	r3, r3, #2928
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, [fp, #-20]
	add	r3, r3, #2880
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	mov	r3, #225
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, [fp, #-20]
	add	r3, r3, #3024
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, [fp, #-20]
	add	r3, r3, #2976
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	mov	r3, #230
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	add	r2, r2, #48
	ldr	r3, .L15+88
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	mov	r2, #17
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #5376
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #3648
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	b	.L16
.L17:
	.align	2
.L15:
	.word	.LC96(GOTOFF)
	.word	290
	.word	.LC97(GOTOFF)
	.word	.LC98(GOTOFF)
	.word	.LC99(GOTOFF)
	.word	.LC100(GOTOFF)
	.word	445
	.word	.LC101(GOTOFF)
	.word	.LC102(GOTOFF)
	.word	.LC103(GOTOFF)
	.word	.LC104(GOTOFF)
	.word	.LC105(GOTOFF)
	.word	.LC106(GOTOFF)
	.word	314
	.word	.LC107(GOTOFF)
	.word	.LC108(GOTOFF)
	.word	411
	.word	305
	.word	.LC109(GOTOFF)
	.word	.LC110(GOTOFF)
	.word	.LC111(GOTOFF)
	.word	.LC112(GOTOFF)
	.word	.LC113(GOTOFF)
	.word	.LC114(GOTOFF)
	.word	338
	.word	.LC115(GOTOFF)
	.word	.LC116(GOTOFF)
	.word	.LC117(GOTOFF)
	.word	.LC118(GOTOFF)
	.word	.LC119(GOTOFF)
	.word	.LC120(GOTOFF)
	.word	.LC121(GOTOFF)
	.word	.LC122(GOTOFF)
	.word	.LC123(GOTOFF)
	.word	.LC124(GOTOFF)
	.word	.LC125(GOTOFF)
	.word	.LC126(GOTOFF)
	.word	.LC127(GOTOFF)
	.word	.LC128(GOTOFF)
	.word	410
	.word	.LC129(GOTOFF)
	.word	.LC130(GOTOFF)
	.word	.LC131(GOTOFF)
	.word	.LC132(GOTOFF)
	.word	.LC133(GOTOFF)
	.word	.LC134(GOTOFF)
	.word	.LC135(GOTOFF)
	.word	.LC136(GOTOFF)
	.word	.LC137(GOTOFF)
.L16:
	add	r2, r3, #5376
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #3696
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	mov	r2, #62
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5440
	add	r2, r2, #32
	ldr	r3, .L15+92
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	mov	r2, #18
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5440
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5440
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #1824
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5440
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #1872
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	mov	r2, #215
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5440
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5440
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5440
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	ldr	r2, .L15+96
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5504
	add	r2, r2, #16
	ldr	r3, .L15+100
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	mov	r2, #18
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5504
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5504
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5504
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #4224
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	mov	r2, #187
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, .L15+104
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	mov	r3, #153
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, [fp, #-20]
	add	r3, r3, #5952
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, [fp, #-20]
	add	r3, r3, #5952
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	mov	r3, #230
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, [fp, #-20]
	add	r3, r3, #1584
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, [fp, #-20]
	add	r3, r3, #1536
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	mov	r3, #228
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	add	r2, r2, #48
	ldr	r3, .L15+108
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	mov	r2, #153
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #5568
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	mov	r2, #24
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5632
	add	r2, r2, #32
	ldr	r3, .L15+112
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	mov	r2, #154
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5632
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5632
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5632
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #5568
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	mov	r2, #24
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5632
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #1344
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5632
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #1392
	str	r2, [r3, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	mov	r2, #224
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5696
	add	r2, r2, #16
	ldr	r3, .L15+116
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	mov	r2, #154
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5696
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5696
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5696
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5696
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	mov	r2, #32
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, .L15+120
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	mov	r3, #155
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, [fp, #-20]
	add	r3, r3, #6016
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, [fp, #-20]
	add	r3, r3, #6080
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	mov	r3, #247
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, [fp, #-20]
	add	r3, r3, #2304
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, [fp, #-20]
	add	r3, r3, #2352
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	mov	r3, #227
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	add	r2, r2, #48
	ldr	r3, .L15+124
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	mov	r2, #155
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #5760
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	mov	r2, #24
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5824
	add	r2, r2, #32
	ldr	r3, .L15+128
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	mov	r2, #156
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5824
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5824
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5824
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #5760
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	mov	r2, #24
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5824
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #3072
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5824
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #3120
	str	r2, [r3, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	mov	r2, #222
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5888
	add	r2, r2, #16
	ldr	r3, .L15+132
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	mov	r2, #156
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5888
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5888
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5888
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5888
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	mov	r2, #32
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	ldr	r3, .L15+136
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	mov	r3, #4
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	ldr	r3, [fp, #-20]
	add	r3, r3, #5952
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	ldr	r3, [fp, #-20]
	add	r3, r3, #5952
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	mov	r3, #230
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	add	r2, r2, #48
	ldr	r3, .L15+140
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5952
	add	r3, r3, #48
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5952
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #5952
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6016
	add	r2, r2, #32
	ldr	r3, .L15+144
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6016
	add	r3, r3, #32
	mov	r2, #4
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6016
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6080
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6016
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6016
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6016
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6016
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6016
	add	r3, r3, #32
	mov	r2, #247
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6080
	add	r2, r2, #16
	ldr	r3, .L15+148
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6080
	add	r3, r3, #16
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6080
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #6016
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	ldr	r3, .L15+152
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	mov	r3, #4
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	ldr	r3, [fp, #-20]
	add	r3, r3, #6144
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	ldr	r3, [fp, #-20]
	add	r3, r3, #1632
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	ldr	r3, [fp, #-20]
	add	r3, r3, #6144
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	ldr	r3, [fp, #-20]
	add	r3, r3, #1680
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	ldr	r3, .L15+156
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	add	r2, r2, #48
	ldr	r3, .L15+160
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6144
	add	r3, r3, #48
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6144
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #6144
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6208
	add	r2, r2, #32
	ldr	r3, .L15+164
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6208
	add	r3, r3, #32
	mov	r2, #4
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6208
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6272
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6208
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #624
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6208
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6208
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6208
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #576
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6208
	add	r3, r3, #32
	mov	r2, #320
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6272
	add	r2, r2, #16
	ldr	r3, .L15+168
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6272
	add	r3, r3, #16
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6272
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #6208
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	ldr	r3, .L15+172
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	mov	r3, #4
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	ldr	r3, [fp, #-20]
	add	r3, r3, #6336
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	ldr	r3, [fp, #-20]
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	ldr	r3, [fp, #-20]
	add	r3, r3, #6336
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	ldr	r3, [fp, #-20]
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	mov	r3, #500
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	add	r2, r2, #48
	ldr	r3, .L15+176
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6336
	add	r3, r3, #48
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6336
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #6336
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6400
	add	r2, r2, #32
	ldr	r3, .L15+180
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6400
	add	r3, r3, #32
	mov	r2, #4
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6400
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6464
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6400
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #672
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6400
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6400
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6400
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #720
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6400
	add	r3, r3, #32
	mov	r2, #145
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6464
	add	r2, r2, #16
	ldr	r3, .L15+184
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6464
	add	r3, r3, #16
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6464
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #6400
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	ldr	r3, .L15+188
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	mov	r3, #4
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	ldr	r3, [fp, #-20]
	add	r3, r3, #6528
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	ldr	r3, [fp, #-20]
	add	r3, r3, #1104
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	ldr	r3, [fp, #-20]
	add	r3, r3, #6528
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	ldr	r3, [fp, #-20]
	add	r3, r3, #1056
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	mov	r3, #60
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	add	r2, r2, #48
	ldr	r3, .L15+192
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6528
	add	r3, r3, #48
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6528
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #6528
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6592
	add	r2, r2, #32
	ldr	r3, .L18
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6592
	add	r3, r3, #32
	mov	r2, #4
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6592
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6656
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6592
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #528
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6592
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6592
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6592
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #480
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6592
	add	r3, r3, #32
	mov	r2, #60
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6656
	add	r2, r2, #16
	ldr	r3, .L18+4
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6656
	add	r3, r3, #16
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6656
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #6592
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6720
	ldr	r3, .L18+8
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6720
	mov	r3, #4
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6720
	ldr	r3, [fp, #-20]
	add	r3, r3, #6720
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6720
	ldr	r3, [fp, #-20]
	add	r3, r3, #1200
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6720
	ldr	r3, [fp, #-20]
	add	r3, r3, #6720
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6720
	ldr	r3, [fp, #-20]
	add	r3, r3, #1152
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6720
	mov	r3, #70
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6720
	add	r2, r2, #48
	ldr	r3, .L18+12
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6720
	add	r3, r3, #48
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6720
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #6720
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6784
	add	r2, r2, #32
	ldr	r3, .L18+16
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6784
	add	r3, r3, #32
	mov	r2, #4
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6784
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6848
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6784
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #1296
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6784
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6784
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6784
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #1248
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6784
	add	r3, r3, #32
	mov	r2, #70
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6848
	add	r2, r2, #16
	ldr	r3, .L18+20
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6848
	add	r3, r3, #16
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6848
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #6784
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldmfd	sp, {r3, sl, fp, sp, pc}
.L19:
	.align	2
.L18:
	.word	.LC138(GOTOFF)
	.word	.LC139(GOTOFF)
	.word	.LC140(GOTOFF)
	.word	.LC141(GOTOFF)
	.word	.LC142(GOTOFF)
	.word	.LC143(GOTOFF)
	.size	init_tracka, .-init_tracka
	.align	2
	.global	init_trackb
	.type	init_trackb, %function
init_trackb:
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	ldr	sl, .L23
.L22:
	add	sl, pc, sl
	str	r0, [fp, #-20]
	ldr	r0, [fp, #-20]
	mov	r1, #0
	mov	r2, #6912
	bl	memset(PLT)
	ldr	r2, [fp, #-20]
	ldr	r3, .L23+4
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, [fp, #-20]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	add	r2, r3, #16
	ldr	r3, [fp, #-20]
	str	r2, [r3, #16]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-20]
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	ldr	r2, [fp, #-20]
	str	r3, [r2, #24]
	ldr	r2, [fp, #-20]
	mov	r3, #218
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, .L23+8
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	mov	r3, #1
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, [fp, #-20]
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #6336
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #6336
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	mov	r3, #500
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	ldr	r3, .L23+12
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	mov	r3, #2
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	ldr	r3, [fp, #-20]
	add	r3, r3, #144
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	ldr	r3, [fp, #-20]
	add	r3, r3, #96
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	mov	r3, #62
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	ldr	r3, .L23+16
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	mov	r3, #3
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	ldr	r3, [fp, #-20]
	add	r3, r3, #96
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	ldr	r3, [fp, #-20]
	add	r3, r3, #1440
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	ldr	r3, [fp, #-20]
	add	r3, r3, #144
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	ldr	r3, [fp, #-20]
	add	r3, r3, #1488
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #144
	mov	r3, #440
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	ldr	r3, .L23+20
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	mov	r3, #4
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	ldr	r3, [fp, #-20]
	add	r3, r3, #240
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	ldr	r3, [fp, #-20]
	add	r3, r3, #4032
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	ldr	r3, [fp, #-20]
	add	r3, r3, #192
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	ldr	r3, [fp, #-20]
	add	r3, r3, #4080
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #192
	mov	r3, #216
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	ldr	r3, .L23+24
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	mov	r3, #5
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	ldr	r3, [fp, #-20]
	add	r3, r3, #192
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	ldr	r3, [fp, #-20]
	add	r3, r3, #1152
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	ldr	r3, [fp, #-20]
	add	r3, r3, #240
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	ldr	r3, [fp, #-20]
	add	r3, r3, #1200
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #240
	ldr	r3, .L23+28
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	ldr	r3, .L23+32
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	mov	r3, #6
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	ldr	r3, [fp, #-20]
	add	r3, r3, #336
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	ldr	r3, [fp, #-20]
	add	r3, r3, #1248
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	ldr	r3, [fp, #-20]
	add	r3, r3, #288
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	ldr	r3, [fp, #-20]
	add	r3, r3, #1296
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #288
	ldr	r3, .L23+132
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	ldr	r3, .L23+36
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	mov	r3, #7
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	ldr	r3, [fp, #-20]
	add	r3, r3, #288
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	ldr	r3, [fp, #-20]
	add	r3, r3, #3936
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	ldr	r3, [fp, #-20]
	add	r3, r3, #336
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	ldr	r3, [fp, #-20]
	add	r3, r3, #3984
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #336
	mov	r3, #211
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	ldr	r3, .L23+40
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	mov	r3, #8
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	ldr	r3, [fp, #-20]
	add	r3, r3, #432
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	ldr	r3, [fp, #-20]
	add	r3, r3, #1056
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	ldr	r3, [fp, #-20]
	add	r3, r3, #384
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	ldr	r3, [fp, #-20]
	add	r3, r3, #1104
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #384
	ldr	r3, .L23+44
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	ldr	r3, .L23+48
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	mov	r3, #9
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	ldr	r3, [fp, #-20]
	add	r3, r3, #384
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	ldr	r3, [fp, #-20]
	add	r3, r3, #3840
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	ldr	r3, [fp, #-20]
	add	r3, r3, #432
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	ldr	r3, [fp, #-20]
	add	r3, r3, #3888
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #432
	mov	r3, #210
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	ldr	r3, .L23+52
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	mov	r3, #10
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	ldr	r3, [fp, #-20]
	add	r3, r3, #528
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	ldr	r3, [fp, #-20]
	add	r3, r3, #3840
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	ldr	r3, [fp, #-20]
	add	r3, r3, #480
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	ldr	r3, [fp, #-20]
	add	r3, r3, #3888
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #480
	ldr	r3, .L23+56
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	ldr	r3, .L23+60
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	mov	r3, #11
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	ldr	r3, [fp, #-20]
	add	r3, r3, #480
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	ldr	r3, [fp, #-20]
	add	r3, r3, #672
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	ldr	r3, [fp, #-20]
	add	r3, r3, #528
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	ldr	r3, [fp, #-20]
	add	r3, r3, #720
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #528
	ldr	r3, .L23+64
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	ldr	r3, .L23+68
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	mov	r3, #12
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	ldr	r3, [fp, #-20]
	add	r3, r3, #624
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	ldr	r3, [fp, #-20]
	add	r3, r3, #576
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #576
	mov	r3, #215
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	ldr	r3, .L23+72
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	mov	r3, #13
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	ldr	r3, [fp, #-20]
	add	r3, r3, #576
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	ldr	r3, [fp, #-20]
	add	r3, r3, #6208
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	ldr	r3, [fp, #-20]
	add	r3, r3, #624
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	ldr	r3, [fp, #-20]
	add	r3, r3, #6272
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #624
	mov	r3, #320
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	ldr	r3, .L23+76
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	mov	r3, #14
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	ldr	r3, [fp, #-20]
	add	r3, r3, #720
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	ldr	r3, [fp, #-20]
	add	r3, r3, #528
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	ldr	r3, [fp, #-20]
	add	r3, r3, #672
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	ldr	r3, [fp, #-20]
	add	r3, r3, #480
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #672
	ldr	r3, .L23+64
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	ldr	r3, .L23+80
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	mov	r3, #15
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	ldr	r3, [fp, #-20]
	add	r3, r3, #672
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	ldr	r3, [fp, #-20]
	add	r3, r3, #720
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #720
	mov	r3, #260
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	ldr	r3, .L23+84
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	mov	r3, #16
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	ldr	r3, [fp, #-20]
	add	r3, r3, #816
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	ldr	r3, [fp, #-20]
	add	r3, r3, #2880
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	ldr	r3, [fp, #-20]
	add	r3, r3, #768
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	ldr	r3, [fp, #-20]
	add	r3, r3, #2928
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #768
	ldr	r3, .L23+88
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	ldr	r3, .L23+92
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	mov	r3, #17
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	ldr	r3, [fp, #-20]
	add	r3, r3, #768
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	ldr	r3, [fp, #-20]
	add	r3, r3, #816
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #816
	mov	r3, #225
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	ldr	r3, .L23+96
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	mov	r3, #18
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	ldr	r3, [fp, #-20]
	add	r3, r3, #912
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	ldr	r3, [fp, #-20]
	add	r3, r3, #1536
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	ldr	r3, [fp, #-20]
	add	r3, r3, #864
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	ldr	r3, [fp, #-20]
	add	r3, r3, #1584
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #864
	mov	r3, #230
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	ldr	r3, .L23+100
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	mov	r3, #19
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	ldr	r3, [fp, #-20]
	add	r3, r3, #864
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	ldr	r3, [fp, #-20]
	add	r3, r3, #912
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #912
	mov	r3, #220
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	ldr	r3, .L23+104
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	mov	r3, #20
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	ldr	r3, [fp, #-20]
	add	r3, r3, #1008
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	ldr	r3, [fp, #-20]
	add	r3, r3, #2448
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	ldr	r3, [fp, #-20]
	add	r3, r3, #960
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	ldr	r3, [fp, #-20]
	add	r3, r3, #2400
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #960
	ldr	r3, .L23+236
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	ldr	r3, .L23+108
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	mov	r3, #21
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	ldr	r3, [fp, #-20]
	add	r3, r3, #960
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	ldr	r3, [fp, #-20]
	add	r3, r3, #1008
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1008
	mov	r3, #214
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	ldr	r3, .L23+112
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	mov	r3, #22
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	ldr	r3, [fp, #-20]
	add	r3, r3, #1104
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	ldr	r3, [fp, #-20]
	add	r3, r3, #384
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	ldr	r3, [fp, #-20]
	add	r3, r3, #1056
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	ldr	r3, [fp, #-20]
	add	r3, r3, #432
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1056
	ldr	r3, .L23+44
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	ldr	r3, .L23+116
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	mov	r3, #23
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	ldr	r3, [fp, #-20]
	add	r3, r3, #1056
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	ldr	r3, [fp, #-20]
	add	r3, r3, #6400
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	ldr	r3, [fp, #-20]
	add	r3, r3, #1104
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	ldr	r3, [fp, #-20]
	add	r3, r3, #6464
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1104
	mov	r3, #60
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	ldr	r3, .L23+120
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	mov	r3, #24
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	ldr	r3, [fp, #-20]
	add	r3, r3, #1200
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	ldr	r3, [fp, #-20]
	add	r3, r3, #240
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	ldr	r3, [fp, #-20]
	add	r3, r3, #1152
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	ldr	r3, [fp, #-20]
	add	r3, r3, #192
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1152
	ldr	r3, .L23+28
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	ldr	r3, .L23+124
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	mov	r3, #25
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	ldr	r3, [fp, #-20]
	add	r3, r3, #1152
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	ldr	r3, [fp, #-20]
	add	r3, r3, #6528
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	ldr	r3, [fp, #-20]
	add	r3, r3, #1200
	b	.L24
.L25:
	.align	2
.L23:
	.word	_GLOBAL_OFFSET_TABLE_-(.L22+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	649
	.word	.LC6(GOTOFF)
	.word	.LC7(GOTOFF)
	.word	.LC8(GOTOFF)
	.word	289
	.word	.LC9(GOTOFF)
	.word	.LC10(GOTOFF)
	.word	265
	.word	.LC11(GOTOFF)
	.word	774
	.word	.LC12(GOTOFF)
	.word	.LC13(GOTOFF)
	.word	.LC14(GOTOFF)
	.word	.LC15(GOTOFF)
	.word	.LC16(GOTOFF)
	.word	398
	.word	.LC17(GOTOFF)
	.word	.LC18(GOTOFF)
	.word	.LC19(GOTOFF)
	.word	.LC20(GOTOFF)
	.word	.LC21(GOTOFF)
	.word	.LC22(GOTOFF)
	.word	.LC23(GOTOFF)
	.word	.LC24(GOTOFF)
	.word	.LC25(GOTOFF)
	.word	.LC26(GOTOFF)
	.word	473
	.word	.LC27(GOTOFF)
	.word	.LC28(GOTOFF)
	.word	.LC29(GOTOFF)
	.word	.LC30(GOTOFF)
	.word	.LC31(GOTOFF)
	.word	.LC32(GOTOFF)
	.word	.LC33(GOTOFF)
	.word	.LC34(GOTOFF)
	.word	410
	.word	.LC35(GOTOFF)
	.word	.LC36(GOTOFF)
	.word	.LC37(GOTOFF)
	.word	411
	.word	.LC38(GOTOFF)
	.word	.LC39(GOTOFF)
	.word	.LC40(GOTOFF)
	.word	305
	.word	.LC41(GOTOFF)
	.word	.LC42(GOTOFF)
	.word	.LC43(GOTOFF)
	.word	314
	.word	.LC44(GOTOFF)
	.word	785
	.word	.LC45(GOTOFF)
	.word	.LC46(GOTOFF)
	.word	405
	.word	.LC47(GOTOFF)
	.word	.LC48(GOTOFF)
	.word	.LC49(GOTOFF)
	.word	.LC50(GOTOFF)
	.word	.LC51(GOTOFF)
.L24:
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	ldr	r3, [fp, #-20]
	add	r3, r3, #6528
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1200
	mov	r3, #70
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	ldr	r3, .L23+128
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	mov	r3, #26
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	ldr	r3, [fp, #-20]
	add	r3, r3, #1296
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	ldr	r3, [fp, #-20]
	add	r3, r3, #288
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	ldr	r3, [fp, #-20]
	add	r3, r3, #1248
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	ldr	r3, [fp, #-20]
	add	r3, r3, #336
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1248
	ldr	r3, .L23+132
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	ldr	r3, .L23+136
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	mov	r3, #27
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	ldr	r3, [fp, #-20]
	add	r3, r3, #1248
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	ldr	r3, [fp, #-20]
	add	r3, r3, #6592
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	ldr	r3, [fp, #-20]
	add	r3, r3, #1296
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	ldr	r3, [fp, #-20]
	add	r3, r3, #6656
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1296
	mov	r3, #70
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	ldr	r3, .L23+140
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	mov	r3, #28
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	ldr	r3, [fp, #-20]
	add	r3, r3, #1392
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	ldr	r3, [fp, #-20]
	add	r3, r3, #1344
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1344
	mov	r3, #224
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	ldr	r3, .L23+144
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	mov	r3, #29
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	ldr	r3, [fp, #-20]
	add	r3, r3, #1344
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	ldr	r3, [fp, #-20]
	add	r3, r3, #2976
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	ldr	r3, [fp, #-20]
	add	r3, r3, #1392
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	ldr	r3, [fp, #-20]
	add	r3, r3, #3024
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1392
	mov	r3, #202
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	ldr	r3, .L23+148
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	mov	r3, #30
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	ldr	r3, [fp, #-20]
	add	r3, r3, #1488
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	ldr	r3, [fp, #-20]
	add	r3, r3, #144
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	ldr	r3, [fp, #-20]
	add	r3, r3, #1440
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	ldr	r3, [fp, #-20]
	add	r3, r3, #96
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1440
	mov	r3, #440
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	ldr	r3, .L23+152
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	mov	r3, #31
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	ldr	r3, [fp, #-20]
	add	r3, r3, #1440
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	ldr	r3, [fp, #-20]
	add	r3, r3, #1488
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1488
	mov	r3, #70
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	ldr	r3, .L23+156
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	mov	r3, #32
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	ldr	r3, [fp, #-20]
	add	r3, r3, #1584
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	ldr	r3, [fp, #-20]
	add	r3, r3, #864
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	ldr	r3, [fp, #-20]
	add	r3, r3, #1536
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	ldr	r3, [fp, #-20]
	add	r3, r3, #912
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1536
	mov	r3, #230
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	ldr	r3, .L23+160
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	mov	r3, #33
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	ldr	r3, [fp, #-20]
	add	r3, r3, #1536
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	ldr	r3, [fp, #-20]
	add	r3, r3, #1584
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1584
	mov	r3, #228
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	ldr	r3, .L23+164
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	mov	r3, #34
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	ldr	r3, [fp, #-20]
	add	r3, r3, #1680
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	ldr	r3, [fp, #-20]
	add	r3, r3, #6144
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	ldr	r3, [fp, #-20]
	add	r3, r3, #1632
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	ldr	r3, [fp, #-20]
	add	r3, r3, #6144
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1632
	ldr	r3, .L23+168
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	ldr	r3, .L23+172
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	mov	r3, #35
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	ldr	r3, [fp, #-20]
	add	r3, r3, #1632
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	ldr	r3, [fp, #-20]
	add	r3, r3, #1680
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1680
	mov	r3, #226
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	ldr	r3, .L23+176
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	mov	r3, #36
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	ldr	r3, [fp, #-20]
	add	r3, r3, #1776
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	ldr	r3, [fp, #-20]
	add	r3, r3, #1728
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1728
	mov	r3, #79
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	ldr	r3, .L23+180
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	mov	r3, #37
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	ldr	r3, [fp, #-20]
	add	r3, r3, #1728
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	ldr	r3, [fp, #-20]
	add	r3, r3, #1776
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1776
	ldr	r3, .L23+184
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	ldr	r3, .L23+188
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	mov	r3, #38
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	ldr	r3, [fp, #-20]
	add	r3, r3, #1872
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	ldr	r3, [fp, #-20]
	add	r3, r3, #1824
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1824
	mov	r3, #215
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	ldr	r3, .L23+192
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	mov	r3, #39
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	ldr	r3, [fp, #-20]
	add	r3, r3, #1824
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	ldr	r3, [fp, #-20]
	add	r3, r3, #4080
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	ldr	r3, [fp, #-20]
	add	r3, r3, #1872
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	ldr	r3, [fp, #-20]
	add	r3, r3, #4032
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1872
	mov	r3, #145
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	ldr	r3, .L23+196
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	mov	r3, #40
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	ldr	r3, [fp, #-20]
	add	r3, r3, #1968
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	ldr	r3, [fp, #-20]
	add	r3, r3, #1920
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1920
	ldr	r3, .L23+200
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	ldr	r3, .L23+204
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	mov	r3, #41
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	ldr	r3, [fp, #-20]
	add	r3, r3, #1920
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	ldr	r3, [fp, #-20]
	add	r3, r3, #1968
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1968
	mov	r3, #146
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	ldr	r3, .L23+208
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	mov	r3, #42
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	ldr	r3, [fp, #-20]
	add	r3, r3, #2064
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	ldr	r3, [fp, #-20]
	add	r3, r3, #2016
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2016
	mov	r3, #140
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	ldr	r3, .L23+212
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	mov	r3, #43
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	ldr	r3, [fp, #-20]
	add	r3, r3, #2016
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	ldr	r3, [fp, #-20]
	add	r3, r3, #2064
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2064
	ldr	r3, .L23+216
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	ldr	r3, .L23+220
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	mov	r3, #44
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	ldr	r3, [fp, #-20]
	add	r3, r3, #2160
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	ldr	r3, [fp, #-20]
	add	r3, r3, #3408
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	ldr	r3, [fp, #-20]
	add	r3, r3, #2112
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	ldr	r3, [fp, #-20]
	add	r3, r3, #3360
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2112
	ldr	r3, .L23+224
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	ldr	r3, .L23+228
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	mov	r3, #45
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	ldr	r3, [fp, #-20]
	add	r3, r3, #2112
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	ldr	r3, [fp, #-20]
	add	r3, r3, #2160
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2160
	mov	r3, #60
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	ldr	r3, .L23+232
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	mov	r3, #46
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	ldr	r3, [fp, #-20]
	add	r3, r3, #2256
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	ldr	r3, [fp, #-20]
	add	r3, r3, #2784
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	ldr	r3, [fp, #-20]
	add	r3, r3, #2208
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	ldr	r3, [fp, #-20]
	add	r3, r3, #2832
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2208
	ldr	r3, .L23+236
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	ldr	r3, .L23+240
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	mov	r3, #47
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	ldr	r3, [fp, #-20]
	add	r3, r3, #2208
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	ldr	r3, [fp, #-20]
	add	r3, r3, #2256
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2256
	mov	r3, #223
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	ldr	r3, .L23+244
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	mov	r3, #48
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	ldr	r3, [fp, #-20]
	add	r3, r3, #2352
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	ldr	r3, [fp, #-20]
	add	r3, r3, #2304
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2304
	mov	r3, #227
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	ldr	r3, .L23+248
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	mov	r3, #49
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	ldr	r3, [fp, #-20]
	add	r3, r3, #2304
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	ldr	r3, [fp, #-20]
	add	r3, r3, #3168
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	ldr	r3, [fp, #-20]
	add	r3, r3, #2352
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	ldr	r3, [fp, #-20]
	add	r3, r3, #3216
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2352
	mov	r3, #200
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	ldr	r3, .L23+252
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	mov	r3, #50
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	ldr	r3, [fp, #-20]
	add	r3, r3, #2448
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	ldr	r3, [fp, #-20]
	add	r3, r3, #2400
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2400
	mov	r3, #223
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	ldr	r3, .L23+256
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	mov	r3, #51
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	ldr	r3, [fp, #-20]
	add	r3, r3, #2400
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	ldr	r3, [fp, #-20]
	add	r3, r3, #960
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	ldr	r3, [fp, #-20]
	add	r3, r3, #2448
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	ldr	r3, [fp, #-20]
	add	r3, r3, #1008
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2448
	ldr	r3, .L26
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	ldr	r3, .L26+4
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	mov	r3, #52
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	ldr	r3, [fp, #-20]
	add	r3, r3, #2544
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	ldr	r3, [fp, #-20]
	add	r3, r3, #3264
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	ldr	r3, [fp, #-20]
	add	r3, r3, #2496
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	ldr	r3, [fp, #-20]
	add	r3, r3, #3312
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2496
	ldr	r3, .L26+124
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	ldr	r3, .L26+8
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	mov	r3, #53
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	ldr	r3, [fp, #-20]
	add	r3, r3, #2496
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	ldr	r3, [fp, #-20]
	add	r3, r3, #2544
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2544
	mov	r3, #213
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	ldr	r3, .L26+12
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	mov	r3, #54
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	ldr	r3, [fp, #-20]
	add	r3, r3, #2640
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	ldr	r3, [fp, #-20]
	add	r3, r3, #2592
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2592
	ldr	r3, .L26+16
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	ldr	r3, .L26+20
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	mov	r3, #55
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	ldr	r3, [fp, #-20]
	add	r3, r3, #2592
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	ldr	r3, [fp, #-20]
	add	r3, r3, #3360
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	ldr	r3, [fp, #-20]
	add	r3, r3, #2640
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	ldr	r3, [fp, #-20]
	add	r3, r3, #3408
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2640
	ldr	r3, .L26+24
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	ldr	r3, .L26+28
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	mov	r3, #56
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	ldr	r3, [fp, #-20]
	add	r3, r3, #2736
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	ldr	r3, [fp, #-20]
	add	r3, r3, #3552
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	ldr	r3, [fp, #-20]
	add	r3, r3, #2688
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	ldr	r3, [fp, #-20]
	add	r3, r3, #3600
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2688
	mov	r3, #284
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	ldr	r3, .L26+32
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	mov	r3, #57
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	ldr	r3, [fp, #-20]
	add	r3, r3, #2688
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	ldr	r3, [fp, #-20]
	add	r3, r3, #2736
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2736
	ldr	r3, .L26+208
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	ldr	r3, .L26+36
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	mov	r3, #58
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	ldr	r3, [fp, #-20]
	add	r3, r3, #2832
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	ldr	r3, [fp, #-20]
	add	r3, r3, #2208
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	ldr	r3, [fp, #-20]
	add	r3, r3, #2784
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	ldr	r3, [fp, #-20]
	add	r3, r3, #2256
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2784
	ldr	r3, .L26
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	ldr	r3, .L26+40
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	mov	r3, #59
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	ldr	r3, [fp, #-20]
	add	r3, r3, #2784
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	ldr	r3, [fp, #-20]
	add	r3, r3, #2832
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2832
	mov	r3, #220
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	ldr	r3, .L26+44
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	mov	r3, #60
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	ldr	r3, [fp, #-20]
	add	r3, r3, #2928
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	ldr	r3, [fp, #-20]
	add	r3, r3, #768
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	ldr	r3, [fp, #-20]
	add	r3, r3, #2880
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	ldr	r3, [fp, #-20]
	add	r3, r3, #816
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2880
	ldr	r3, .L26+48
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	ldr	r3, .L26+52
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	mov	r3, #61
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	ldr	r3, [fp, #-20]
	add	r3, r3, #2880
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	ldr	r3, [fp, #-20]
	add	r3, r3, #2928
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2928
	mov	r3, #225
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	ldr	r3, .L26+56
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	mov	r3, #62
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	ldr	r3, [fp, #-20]
	add	r3, r3, #3024
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	ldr	r3, [fp, #-20]
	add	r3, r3, #1392
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	ldr	r3, [fp, #-20]
	add	r3, r3, #2976
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	ldr	r3, [fp, #-20]
	add	r3, r3, #1344
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #2976
	mov	r3, #202
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	ldr	r3, .L26+60
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	mov	r3, #63
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	ldr	r3, [fp, #-20]
	add	r3, r3, #2976
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	ldr	r3, [fp, #-20]
	add	r3, r3, #3024
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3024
	mov	r3, #230
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	ldr	r3, .L26+64
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	mov	r3, #64
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	ldr	r3, [fp, #-20]
	add	r3, r3, #3120
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	ldr	r3, [fp, #-20]
	add	r3, r3, #3072
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3072
	mov	r3, #222
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	ldr	r3, .L26+68
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	mov	r3, #65
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	ldr	r3, [fp, #-20]
	add	r3, r3, #3072
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	ldr	r3, [fp, #-20]
	add	r3, r3, #3792
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	ldr	r3, [fp, #-20]
	add	r3, r3, #3120
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	ldr	r3, [fp, #-20]
	add	r3, r3, #3744
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3120
	mov	r3, #203
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	ldr	r3, .L26+72
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	mov	r3, #66
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	ldr	r3, [fp, #-20]
	add	r3, r3, #3216
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	ldr	r3, [fp, #-20]
	add	r3, r3, #2352
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	ldr	r3, [fp, #-20]
	add	r3, r3, #3168
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	ldr	r3, [fp, #-20]
	add	r3, r3, #2304
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3168
	mov	r3, #200
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	ldr	r3, .L26+76
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	mov	r3, #67
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	ldr	r3, [fp, #-20]
	add	r3, r3, #3168
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	ldr	r3, [fp, #-20]
	add	r3, r3, #3216
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3216
	mov	r3, #220
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	ldr	r3, .L26+80
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	mov	r3, #68
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	ldr	r3, [fp, #-20]
	add	r3, r3, #3312
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	ldr	r3, [fp, #-20]
	add	r3, r3, #2496
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	ldr	r3, [fp, #-20]
	add	r3, r3, #3264
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	ldr	r3, [fp, #-20]
	add	r3, r3, #2544
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3264
	ldr	r3, .L26+124
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	ldr	r3, .L26+84
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	mov	r3, #69
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	ldr	r3, [fp, #-20]
	add	r3, r3, #3264
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	ldr	r3, [fp, #-20]
	add	r3, r3, #3312
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3312
	mov	r3, #74
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	ldr	r3, .L26+88
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	mov	r3, #70
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	ldr	r3, [fp, #-20]
	add	r3, r3, #3408
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	ldr	r3, [fp, #-20]
	add	r3, r3, #2640
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	ldr	r3, [fp, #-20]
	add	r3, r3, #3360
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	ldr	r3, [fp, #-20]
	add	r3, r3, #2592
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3360
	ldr	r3, .L26+24
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	ldr	r3, .L26+92
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	mov	r3, #71
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	ldr	r3, [fp, #-20]
	add	r3, r3, #3360
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	ldr	r3, [fp, #-20]
	add	r3, r3, #2112
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	ldr	r3, [fp, #-20]
	add	r3, r3, #3408
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	ldr	r3, [fp, #-20]
	add	r3, r3, #2160
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3408
	ldr	r3, .L26+96
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	ldr	r3, .L26+100
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	mov	r3, #72
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	ldr	r3, [fp, #-20]
	add	r3, r3, #3504
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	ldr	r3, [fp, #-20]
	add	r3, r3, #3456
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3456
	mov	r3, #215
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	ldr	r3, .L26+104
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	mov	r3, #73
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	ldr	r3, [fp, #-20]
	add	r3, r3, #3456
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	ldr	r3, [fp, #-20]
	add	r3, r3, #3696
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	ldr	r3, [fp, #-20]
	add	r3, r3, #3504
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	ldr	r3, [fp, #-20]
	add	r3, r3, #3648
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3504
	ldr	r3, .L26+124
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	ldr	r3, .L26+108
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	mov	r3, #74
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	ldr	r3, [fp, #-20]
	add	r3, r3, #3600
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	ldr	r3, [fp, #-20]
	add	r3, r3, #2688
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	ldr	r3, [fp, #-20]
	add	r3, r3, #3552
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	ldr	r3, [fp, #-20]
	add	r3, r3, #2736
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3552
	mov	r3, #284
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	ldr	r3, .L26+112
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	mov	r3, #75
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	ldr	r3, [fp, #-20]
	add	r3, r3, #3552
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	ldr	r3, [fp, #-20]
	add	r3, r3, #3600
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3600
	mov	r3, #65
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	ldr	r3, .L26+116
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	mov	r3, #76
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	ldr	r3, [fp, #-20]
	add	r3, r3, #3696
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	ldr	r3, [fp, #-20]
	add	r3, r3, #3648
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3648
	mov	r3, #62
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	ldr	r3, .L26+120
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	mov	r3, #77
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	ldr	r3, [fp, #-20]
	add	r3, r3, #3648
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	ldr	r3, [fp, #-20]
	add	r3, r3, #3504
	add	r3, r3, #16
	b	.L27
.L28:
	.align	2
.L26:
	.word	405
	.word	.LC52(GOTOFF)
	.word	.LC53(GOTOFF)
	.word	.LC54(GOTOFF)
	.word	290
	.word	.LC55(GOTOFF)
	.word	375
	.word	.LC56(GOTOFF)
	.word	.LC57(GOTOFF)
	.word	.LC58(GOTOFF)
	.word	.LC59(GOTOFF)
	.word	.LC60(GOTOFF)
	.word	398
	.word	.LC61(GOTOFF)
	.word	.LC62(GOTOFF)
	.word	.LC63(GOTOFF)
	.word	.LC64(GOTOFF)
	.word	.LC65(GOTOFF)
	.word	.LC66(GOTOFF)
	.word	.LC67(GOTOFF)
	.word	.LC68(GOTOFF)
	.word	.LC69(GOTOFF)
	.word	.LC70(GOTOFF)
	.word	.LC71(GOTOFF)
	.word	785
	.word	.LC72(GOTOFF)
	.word	.LC73(GOTOFF)
	.word	.LC74(GOTOFF)
	.word	.LC75(GOTOFF)
	.word	.LC76(GOTOFF)
	.word	.LC77(GOTOFF)
	.word	275
	.word	.LC78(GOTOFF)
	.word	.LC79(GOTOFF)
	.word	.LC80(GOTOFF)
	.word	265
	.word	.LC81(GOTOFF)
	.word	.LC82(GOTOFF)
	.word	.LC83(GOTOFF)
	.word	.LC84(GOTOFF)
	.word	.LC85(GOTOFF)
	.word	.LC86(GOTOFF)
	.word	.LC87(GOTOFF)
	.word	.LC88(GOTOFF)
	.word	.LC89(GOTOFF)
	.word	.LC90(GOTOFF)
	.word	338
	.word	.LC91(GOTOFF)
	.word	.LC92(GOTOFF)
	.word	334
	.word	.LC93(GOTOFF)
	.word	.LC94(GOTOFF)
	.word	291
	.word	.LC95(GOTOFF)
	.word	.LC96(GOTOFF)
.L27:
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	ldr	r3, [fp, #-20]
	add	r3, r3, #3696
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	ldr	r3, [fp, #-20]
	add	r3, r3, #3456
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3696
	ldr	r3, .L26+124
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	ldr	r3, .L26+128
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	mov	r3, #78
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	ldr	r3, [fp, #-20]
	add	r3, r3, #3792
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	ldr	r3, [fp, #-20]
	add	r3, r3, #3744
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3744
	mov	r3, #230
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	ldr	r3, .L26+132
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	mov	r3, #79
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	ldr	r3, [fp, #-20]
	add	r3, r3, #3744
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	ldr	r3, [fp, #-20]
	add	r3, r3, #3120
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	ldr	r3, [fp, #-20]
	add	r3, r3, #3792
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	ldr	r3, [fp, #-20]
	add	r3, r3, #3072
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3792
	mov	r3, #203
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, .L26+136
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	mov	r3, #1
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, [fp, #-20]
	add	r3, r3, #3888
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, [fp, #-20]
	add	r3, r3, #480
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, [fp, #-20]
	add	r3, r3, #3840
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, [fp, #-20]
	add	r3, r3, #528
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, .L26+140
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, [fp, #-20]
	add	r3, r3, #432
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, [fp, #-20]
	add	r3, r3, #3840
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	ldr	r3, [fp, #-20]
	add	r3, r3, #384
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3840
	mov	r3, #210
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	ldr	r3, .L26+144
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	mov	r3, #3
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	mov	r3, #1
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	ldr	r3, [fp, #-20]
	add	r3, r3, #3840
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	ldr	r3, [fp, #-20]
	add	r3, r3, #3936
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	ldr	r3, [fp, #-20]
	add	r3, r3, #3888
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	ldr	r3, [fp, #-20]
	add	r3, r3, #3984
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3888
	mov	r3, #191
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, .L26+148
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	mov	r3, #2
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, [fp, #-20]
	add	r3, r3, #3984
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, [fp, #-20]
	add	r3, r3, #3888
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, [fp, #-20]
	add	r3, r3, #3936
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, [fp, #-20]
	add	r3, r3, #3840
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	mov	r3, #191
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, [fp, #-20]
	add	r3, r3, #336
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, [fp, #-20]
	add	r3, r3, #3936
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	ldr	r3, [fp, #-20]
	add	r3, r3, #288
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3936
	mov	r3, #211
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	ldr	r3, .L26+152
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	mov	r3, #3
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	mov	r3, #2
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	ldr	r3, [fp, #-20]
	add	r3, r3, #3936
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	ldr	r3, [fp, #-20]
	add	r3, r3, #4032
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	ldr	r3, [fp, #-20]
	add	r3, r3, #3984
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	ldr	r3, [fp, #-20]
	add	r3, r3, #4080
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #3984
	mov	r3, #182
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, .L26+156
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	mov	r3, #3
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, [fp, #-20]
	add	r3, r3, #4080
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, [fp, #-20]
	add	r3, r3, #192
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, [fp, #-20]
	add	r3, r3, #4032
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, [fp, #-20]
	add	r3, r3, #240
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	mov	r3, #216
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, [fp, #-20]
	add	r3, r3, #3984
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, [fp, #-20]
	add	r3, r3, #4032
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	ldr	r3, [fp, #-20]
	add	r3, r3, #3936
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4032
	mov	r3, #182
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	ldr	r3, .L26+160
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	mov	r3, #3
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	mov	r3, #3
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	ldr	r3, [fp, #-20]
	add	r3, r3, #4032
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	ldr	r3, [fp, #-20]
	add	r3, r3, #1872
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	ldr	r3, [fp, #-20]
	add	r3, r3, #4080
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	ldr	r3, [fp, #-20]
	add	r3, r3, #1824
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4080
	mov	r3, #145
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4096
	add	r2, r2, #32
	ldr	r3, .L26+164
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	mov	r2, #4
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4096
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4096
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #720
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4096
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #672
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	mov	r2, #260
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4096
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #576
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4096
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #624
	str	r2, [r3, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	mov	r2, #215
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4160
	add	r2, r2, #16
	ldr	r3, .L26+168
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	mov	r2, #4
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4160
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4160
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4160
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4160
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	mov	r2, #185
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, .L26+172
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	mov	r3, #5
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, [fp, #-20]
	add	r3, r3, #1680
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, [fp, #-20]
	add	r3, r3, #1632
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	mov	r3, #226
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	ldr	r3, .L26+196
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	add	r2, r2, #48
	ldr	r3, .L26+176
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	mov	r2, #5
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #4224
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4224
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	mov	r2, #187
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4288
	add	r2, r2, #32
	ldr	r3, .L26+180
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	mov	r2, #6
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4288
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4288
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #2256
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4288
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #2208
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	mov	r2, #223
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4288
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4288
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4288
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	ldr	r2, .L26+184
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4352
	add	r2, r2, #16
	ldr	r3, .L26+188
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	mov	r2, #6
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4352
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4352
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #1728
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4352
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #1776
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	mov	r2, #79
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, .L26+192
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	mov	r3, #7
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, [fp, #-20]
	add	r3, r3, #2832
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, [fp, #-20]
	add	r3, r3, #2784
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	mov	r3, #220
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	ldr	r3, .L26+196
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	add	r2, r2, #48
	ldr	r3, .L26+200
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	mov	r2, #7
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #4416
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #3600
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4416
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #3552
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4416
	add	r3, r3, #48
	mov	r2, #65
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4480
	add	r2, r2, #32
	ldr	r3, .L26+204
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	mov	r2, #8
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4480
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4480
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #2736
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4480
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #2688
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	ldr	r2, .L26+208
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4480
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #3456
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4480
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #3504
	str	r2, [r3, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	mov	r2, #215
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4544
	add	r2, r2, #16
	ldr	r3, .L26+212
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	mov	r2, #8
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4544
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4544
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4544
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #4608
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	mov	r2, #193
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, .L26+216
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	mov	r3, #9
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, [fp, #-20]
	add	r3, r3, #2592
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, [fp, #-20]
	add	r3, r3, #2640
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, .L29
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, [fp, #-20]
	add	r3, r3, #2544
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	ldr	r3, [fp, #-20]
	add	r3, r3, #2496
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	mov	r3, #213
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	add	r2, r2, #48
	ldr	r3, .L29+4
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	mov	r2, #9
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #4608
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #4544
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4608
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #4480
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4608
	add	r3, r3, #48
	mov	r2, #193
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4672
	add	r2, r2, #32
	ldr	r3, .L29+8
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	mov	r2, #10
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4672
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4672
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #2400
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4672
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #2448
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	mov	r2, #223
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4672
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #3216
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4672
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #3168
	str	r2, [r3, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	mov	r2, #220
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4736
	add	r2, r2, #16
	ldr	r3, .L29+12
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	mov	r2, #10
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4736
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4672
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4736
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #3312
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4736
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #3264
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4736
	add	r3, r3, #16
	mov	r2, #74
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, .L29+16
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	mov	r3, #11
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	mov	r3, #190
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	ldr	r3, .L29+20
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	add	r2, r2, #48
	ldr	r3, .L29+24
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	mov	r2, #11
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #4800
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #2160
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4800
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #2112
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	mov	r2, #60
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4864
	add	r2, r2, #32
	ldr	r3, .L29+28
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	mov	r2, #12
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4864
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #16
	str	r2, [r3, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4864
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #48
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	mov	r2, #218
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4864
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4160
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4864
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4864
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	add	r3, r3, #32
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	mov	r2, #185
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4928
	add	r2, r2, #16
	ldr	r3, .L29+32
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	mov	r2, #12
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4928
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4864
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4928
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4928
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4928
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4928
	add	r3, r3, #16
	mov	r2, #190
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, .L29+36
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	mov	r3, #13
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, [fp, #-20]
	add	r3, r3, #1008
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, [fp, #-20]
	add	r3, r3, #960
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	mov	r3, #214
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, [fp, #-20]
	add	r3, r3, #3744
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	ldr	r3, [fp, #-20]
	add	r3, r3, #3792
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	mov	r3, #230
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	add	r2, r2, #48
	ldr	r3, .L29+40
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	mov	r2, #13
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #4992
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #2016
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4992
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #2064
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4992
	add	r3, r3, #48
	mov	r2, #140
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5056
	add	r2, r2, #32
	ldr	r3, .L29+44
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	mov	r2, #14
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5056
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5056
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5056
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5056
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4800
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	ldr	r2, .L29+20
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5056
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #2064
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5056
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #2016
	str	r2, [r3, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	ldr	r2, .L29+48
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5120
	add	r2, r2, #16
	ldr	r3, .L29+52
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	mov	r2, #14
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5120
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5056
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5120
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #96
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5120
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #144
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5120
	add	r3, r3, #16
	mov	r2, #62
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, .L29+56
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	mov	r3, #15
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, [fp, #-20]
	add	r3, r3, #1776
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, [fp, #-20]
	add	r3, r3, #1728
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, .L29+60
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, [fp, #-20]
	add	r3, r3, #1920
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, [fp, #-20]
	add	r3, r3, #1968
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	ldr	r3, .L29+64
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	add	r2, r2, #48
	ldr	r3, .L29+68
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	mov	r2, #15
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #5184
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #1488
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5184
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #1440
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5184
	add	r3, r3, #48
	mov	r2, #70
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5248
	add	r2, r2, #32
	ldr	r3, .L29+72
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	mov	r2, #16
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5248
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5248
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #816
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5248
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #768
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	mov	r2, #225
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5248
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #912
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5248
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #864
	str	r2, [r3, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	mov	r2, #220
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5312
	add	r2, r2, #16
	ldr	r3, .L29+76
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	mov	r2, #16
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5312
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5248
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5312
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #1968
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5312
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #1920
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5312
	add	r3, r3, #16
	mov	r2, #146
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, .L29+80
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	mov	r3, #17
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, [fp, #-20]
	add	r3, r3, #2928
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, [fp, #-20]
	add	r3, r3, #2880
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	mov	r3, #225
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, [fp, #-20]
	add	r3, r3, #3024
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	ldr	r3, [fp, #-20]
	add	r3, r3, #2976
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	mov	r3, #230
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	add	r2, r2, #48
	ldr	r3, .L29+84
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	mov	r2, #17
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #5376
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #3648
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5376
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #3696
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5376
	add	r3, r3, #48
	mov	r2, #62
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5440
	add	r2, r2, #32
	ldr	r3, .L29+88
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	mov	r2, #18
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5440
	b	.L30
.L31:
	.align	2
.L29:
	.word	290
	.word	.LC97(GOTOFF)
	.word	.LC98(GOTOFF)
	.word	.LC99(GOTOFF)
	.word	.LC100(GOTOFF)
	.word	445
	.word	.LC101(GOTOFF)
	.word	.LC102(GOTOFF)
	.word	.LC103(GOTOFF)
	.word	.LC104(GOTOFF)
	.word	.LC105(GOTOFF)
	.word	.LC106(GOTOFF)
	.word	314
	.word	.LC107(GOTOFF)
	.word	.LC108(GOTOFF)
	.word	411
	.word	305
	.word	.LC109(GOTOFF)
	.word	.LC110(GOTOFF)
	.word	.LC111(GOTOFF)
	.word	.LC112(GOTOFF)
	.word	.LC113(GOTOFF)
	.word	.LC114(GOTOFF)
	.word	338
	.word	.LC115(GOTOFF)
	.word	.LC116(GOTOFF)
	.word	.LC117(GOTOFF)
	.word	.LC118(GOTOFF)
	.word	.LC119(GOTOFF)
	.word	.LC120(GOTOFF)
	.word	.LC121(GOTOFF)
	.word	.LC122(GOTOFF)
	.word	.LC123(GOTOFF)
	.word	.LC124(GOTOFF)
	.word	.LC125(GOTOFF)
	.word	.LC126(GOTOFF)
	.word	.LC127(GOTOFF)
	.word	.LC128(GOTOFF)
	.word	410
	.word	.LC129(GOTOFF)
	.word	.LC130(GOTOFF)
	.word	.LC131(GOTOFF)
	.word	.LC132(GOTOFF)
	.word	.LC133(GOTOFF)
	.word	.LC136(GOTOFF)
	.word	.LC137(GOTOFF)
	.word	.LC140(GOTOFF)
	.word	.LC141(GOTOFF)
	.word	.LC142(GOTOFF)
.L30:
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5440
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #1824
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5440
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #1872
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	mov	r2, #215
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5440
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4288
	add	r3, r3, #32
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5440
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5440
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #4352
	add	r3, r3, #16
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	ldr	r2, .L29+92
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5504
	add	r2, r2, #16
	ldr	r3, .L29+96
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	mov	r2, #18
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5504
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5440
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5504
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4224
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5504
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #4224
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5504
	add	r3, r3, #16
	mov	r2, #187
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, .L29+100
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	mov	r3, #153
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, [fp, #-20]
	add	r3, r3, #5952
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, [fp, #-20]
	add	r3, r3, #5952
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	mov	r3, #230
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, [fp, #-20]
	add	r3, r3, #1584
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	ldr	r3, [fp, #-20]
	add	r3, r3, #1536
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	mov	r3, #228
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	add	r2, r2, #48
	ldr	r3, .L29+104
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	mov	r2, #153
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #5568
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5568
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	mov	r2, #24
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5632
	add	r2, r2, #32
	ldr	r3, .L29+108
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	mov	r2, #154
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5632
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5632
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5632
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #5568
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	mov	r2, #24
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5632
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #1344
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5632
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #1392
	str	r2, [r3, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	mov	r2, #224
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5696
	add	r2, r2, #16
	ldr	r3, .L29+112
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	mov	r2, #154
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5696
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5696
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5696
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5696
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	mov	r2, #32
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, .L29+116
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	mov	r3, #155
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, [fp, #-20]
	add	r3, r3, #6016
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, [fp, #-20]
	add	r3, r3, #6080
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	mov	r3, #247
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, [fp, #-20]
	add	r3, r3, #2304
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	ldr	r3, [fp, #-20]
	add	r3, r3, #2352
	str	r3, [r2, #40]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	mov	r3, #227
	str	r3, [r2, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	add	r2, r2, #48
	ldr	r3, .L29+120
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	mov	r2, #155
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #5760
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5760
	add	r2, r2, #48
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	mov	r2, #24
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5824
	add	r2, r2, #32
	ldr	r3, .L29+124
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	mov	r2, #156
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5824
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5824
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5824
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #5760
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	mov	r2, #24
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5824
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #3072
	add	r3, r3, #16
	str	r3, [r2, #32]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5824
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	str	r3, [r2, #36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #3120
	str	r2, [r3, #40]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	mov	r2, #222
	str	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5888
	add	r2, r2, #16
	ldr	r3, .L29+128
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	mov	r2, #3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	mov	r2, #156
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5888
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5824
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5888
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5696
	add	r3, r3, #16
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5888
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5888
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #5632
	add	r3, r3, #32
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5888
	add	r3, r3, #16
	mov	r2, #32
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	ldr	r3, .L29+132
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	mov	r3, #4
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	ldr	r3, [fp, #-20]
	add	r3, r3, #5952
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	ldr	r3, [fp, #-20]
	add	r3, r3, #5952
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	ldr	r3, [fp, #-20]
	add	r3, r3, #5568
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	mov	r3, #230
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #5952
	add	r2, r2, #48
	ldr	r3, .L29+136
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5952
	add	r3, r3, #48
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #5952
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #5952
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6016
	add	r2, r2, #32
	ldr	r3, .L29+140
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6016
	add	r3, r3, #32
	mov	r2, #4
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6016
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6080
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6016
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6016
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6016
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6016
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #5760
	add	r3, r3, #48
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6016
	add	r3, r3, #32
	mov	r2, #247
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6080
	add	r2, r2, #16
	ldr	r3, .L29+144
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6080
	add	r3, r3, #16
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6080
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #6016
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	ldr	r3, .L29+148
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	mov	r3, #4
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	ldr	r3, [fp, #-20]
	add	r3, r3, #6144
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	ldr	r3, [fp, #-20]
	add	r3, r3, #1632
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	ldr	r3, [fp, #-20]
	add	r3, r3, #6144
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	ldr	r3, [fp, #-20]
	add	r3, r3, #1680
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	ldr	r3, .L29+152
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6144
	add	r2, r2, #48
	ldr	r3, .L29+156
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6144
	add	r3, r3, #48
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6144
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #6144
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6208
	add	r2, r2, #32
	ldr	r3, .L29+160
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6208
	add	r3, r3, #32
	mov	r2, #4
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6208
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6272
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6208
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #624
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6208
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6208
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6208
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #576
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6208
	add	r3, r3, #32
	mov	r2, #320
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6272
	add	r2, r2, #16
	ldr	r3, .L29+164
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6272
	add	r3, r3, #16
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6272
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #6208
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	ldr	r3, .L29+168
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	mov	r3, #4
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	ldr	r3, [fp, #-20]
	add	r3, r3, #6336
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	ldr	r3, [fp, #-20]
	add	r3, r3, #48
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	ldr	r3, [fp, #-20]
	add	r3, r3, #6336
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	ldr	r3, [fp, #-20]
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	mov	r3, #500
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6336
	add	r2, r2, #48
	ldr	r3, .L29+172
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6336
	add	r3, r3, #48
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6336
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #6336
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6400
	add	r2, r2, #32
	ldr	r3, .L29+176
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6400
	add	r3, r3, #32
	mov	r2, #4
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6400
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6464
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6400
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #1104
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6400
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6400
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6400
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #1056
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6400
	add	r3, r3, #32
	mov	r2, #60
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6464
	add	r2, r2, #16
	ldr	r3, .L29+180
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6464
	add	r3, r3, #16
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6464
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #6400
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	ldr	r3, .L29+184
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	mov	r3, #4
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	ldr	r3, [fp, #-20]
	add	r3, r3, #6528
	add	r3, r3, #48
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	ldr	r3, [fp, #-20]
	add	r3, r3, #1200
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	ldr	r3, [fp, #-20]
	add	r3, r3, #6528
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	ldr	r3, [fp, #-20]
	add	r3, r3, #1152
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	mov	r3, #70
	str	r3, [r2, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6528
	add	r2, r2, #48
	ldr	r3, .L29+188
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6528
	add	r3, r3, #48
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6528
	add	r3, r3, #48
	ldr	r2, [fp, #-20]
	add	r2, r2, #6528
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6592
	add	r2, r2, #32
	ldr	r3, .L29+192
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6592
	add	r3, r3, #32
	mov	r2, #4
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6592
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6656
	add	r3, r3, #16
	str	r3, [r2, #12]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6592
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #1296
	add	r3, r3, #16
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6592
	add	r2, r2, #32
	ldr	r3, [fp, #-20]
	add	r3, r3, #6592
	add	r3, r3, #32
	str	r3, [r2, #20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6592
	add	r3, r3, #32
	ldr	r2, [fp, #-20]
	add	r2, r2, #1248
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6592
	add	r3, r3, #32
	mov	r2, #70
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6656
	add	r2, r2, #16
	ldr	r3, .L32
	add	r3, sl, r3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6656
	add	r3, r3, #16
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r2, r3, #6656
	add	r2, r2, #16
	ldr	r3, [fp, #-20]
	add	r3, r3, #6592
	add	r3, r3, #32
	str	r3, [r2, #12]
	ldmfd	sp, {r3, sl, fp, sp, pc}
.L33:
	.align	2
.L32:
	.word	.LC143(GOTOFF)
	.size	init_trackb, .-init_trackb
	.ident	"GCC: (GNU) 4.0.2"
