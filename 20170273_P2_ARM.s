	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"20170273_P2.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"El arreglo es: %i\000"
	.align	2
.LC1:
	.ascii	", %i\000"
	.align	2
.LC2:
	.ascii	", %i\012\000"
	.global	__aeabi_idivmod
	.align	2
.LC3:
	.ascii	"%i - Deficiente\012\000"
	.align	2
.LC4:
	.ascii	"%i - Perfecto\012\000"
	.align	2
.LC5:
	.ascii	"%i - Abundante\012\000"
	.text
	.align	2
	.global	main
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #72
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L3:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #-72]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #14
	ble	.L3
	mov	r0, #0
	bl	time
	mov	r2, r0
	mov	r3, r1
	mov	r3, r2
	mov	r0, r3
	bl	srand
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L4
.L8:
	bl	rand
	mov	r2, r0
	ldr	r3, .L18
	smull	r1, r3, r2, r3
	add	r3, r3, r2
	asr	r1, r3, #5
	asr	r3, r2, #31
	sub	r1, r1, r3
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r1, r3, #4
	add	r3, r3, r1
	sub	r1, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	str	r1, [r3, #-72]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L5
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-72]
	mov	r1, r3
	ldr	r0, .L18+4
	bl	printf
	b	.L6
.L5:
	ldr	r3, [fp, #-8]
	cmp	r3, #14
	beq	.L7
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-72]
	mov	r1, r3
	ldr	r0, .L18+8
	bl	printf
	b	.L6
.L7:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-72]
	mov	r1, r3
	ldr	r0, .L18+12
	bl	printf
.L6:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L4:
	ldr	r3, [fp, #-8]
	cmp	r3, #14
	ble	.L8
	mov	r0, #10
	bl	putchar
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L9
.L16:
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #1
	str	r3, [fp, #-16]
	b	.L10
.L12:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-72]
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	cmp	r3, #0
	bne	.L11
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-12]
.L11:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L10:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-72]
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	blt	.L12
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-72]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bge	.L13
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-72]
	mov	r1, r3
	ldr	r0, .L18+16
	bl	printf
	b	.L14
.L13:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-72]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bne	.L15
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-72]
	mov	r1, r3
	ldr	r0, .L18+20
	bl	printf
	b	.L14
.L15:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-72]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	ble	.L14
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-72]
	mov	r1, r3
	ldr	r0, .L18+24
	bl	printf
.L14:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L9:
	ldr	r3, [fp, #-8]
	cmp	r3, #14
	ble	.L16
	mov	r0, #10
	bl	putchar
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	-1600085855
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.size	main, .-main
	.ident	"GCC: (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
