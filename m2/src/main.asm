	.syntax unified
	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.fpu fpv4-sp-d16
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	buffer,10,4
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB123:
	.file 1 "main.c"
	.loc 1 30 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 35 0
	ldr	r0, .L5
	movs	r1, #10
	bl	clear_all
	.loc 1 36 0
	ldr	r0, .L5+4
	movs	r1, #43
	movs	r2, #2
	bl	set_all
	.loc 1 37 0
	ldr	r0, .L5
	movs	r1, #0
	movs	r2, #97
	bl	set_value
	.loc 1 38 0
	ldr	r0, .L5
	movs	r1, #9
	bl	get_value
	mov	r3, r0
	strb	r3, [r7, #3]
	.loc 1 39 0
	ldrb	r3, [r7, #3]
	adds	r3, r3, #39
	uxtb	r3, r3
	ldr	r0, .L5
	movs	r1, #9
	mov	r2, r3
	bl	set_value
	.loc 1 40 0
	ldr	r0, .L5
	movs	r1, #3
	movs	r2, #55
	bl	set_value
	.loc 1 41 0
	ldr	r0, .L5
	movs	r1, #1
	movs	r2, #88
	bl	set_value
	.loc 1 42 0
	ldr	r0, .L5
	movs	r1, #4
	movs	r2, #50
	bl	set_value
	.loc 1 43 0
	ldr	r0, .L5
	movs	r1, #1
	bl	get_value
	mov	r3, r0
	strb	r3, [r7, #3]
	.loc 1 44 0
	ldr	r0, .L5
	movs	r1, #2
	movs	r2, #121
	bl	set_value
	.loc 1 45 0
	ldrb	r3, [r7, #3]
	subs	r3, r3, #12
	uxtb	r3, r3
	ldr	r0, .L5
	movs	r1, #7
	mov	r2, r3
	bl	set_value
	.loc 1 46 0
	ldr	r0, .L5
	movs	r1, #5
	movs	r2, #95
	bl	set_value
	.loc 1 48 0
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L2
.L3:
	.loc 1 48 0 is_stmt 0 discriminator 3
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L2:
	.loc 1 48 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #9
	bls	.L3
	.loc 1 52 0 is_stmt 1
	movs	r3, #0
	.loc 1 53 0
	mov	r0, r3
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	buffer
	.word	buffer+8
	.cfi_endproc
.LFE123:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/include/newlib/machine/_default_types.h"
	.file 3 "/usr/include/newlib/sys/_stdint.h"
	.file 4 "../include/CMSIS/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xf2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x1
	.4byte	.LASF17
	.4byte	.LASF18
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x3f
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1f
	.4byte	0x41
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1e
	.4byte	0x68
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc
	.uleb128 0x6
	.ascii	"i\000"
	.byte	0x1
	.byte	0x1f
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0x20
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x744
	.4byte	0xcf
	.uleb128 0x9
	.4byte	0x76
	.uleb128 0xa
	.4byte	0xbc
	.4byte	0xe4
	.uleb128 0xb
	.4byte	0x81
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1b
	.4byte	0xd4
	.uleb128 0x5
	.byte	0x3
	.4byte	buffer
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF6:
	.ascii	"long long int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF17:
	.ascii	"main.c\000"
.LASF19:
	.ascii	"main\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF13:
	.ascii	"char\000"
.LASF16:
	.ascii	"GNU C 4.9.3 20150529 (prerelease) -mcpu=cortex-m4 -"
	.ascii	"mthumb -march=armv7e-m -mfloat-abi=hard -mfpu=fpv4-"
	.ascii	"sp-d16 -g -O0 -std=c99\000"
.LASF4:
	.ascii	"long int\000"
.LASF14:
	.ascii	"ITM_RxBuffer\000"
.LASF0:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"__int32_t\000"
.LASF12:
	.ascii	"value\000"
.LASF2:
	.ascii	"short int\000"
.LASF10:
	.ascii	"int32_t\000"
.LASF15:
	.ascii	"buffer\000"
.LASF11:
	.ascii	"sizetype\000"
.LASF18:
	.ascii	"/home/yusufselim/Embedded/m2/src\000"
	.ident	"GCC: (15:4.9.3+svn231177-1) 4.9.3 20150529 (prerelease)"
