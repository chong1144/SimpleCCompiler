	.file	1 "SimpleCCompiler.cpp"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.rdata
	.align	2
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.space	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.align	2
$LC0:
	.ascii	"Usage:\000"
	.align	2
$LC1:
	.ascii	"./SimpleCCompiler <target.c> <target.s> <target.int> <ta"
	.ascii	"rget.out>\000"
	.text
	.align	2
$LFB1501 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZL20print_usage_and_exitv
	.type	_ZL20print_usage_and_exitv, @function
_ZL20print_usage_and_exitv:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$0
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZL20print_usage_and_exitv
	.cfi_endproc
$LFE1501:
	.size	_ZL20print_usage_and_exitv, .-_ZL20print_usage_and_exitv
	.rdata
	.align	2
$LC2:
	.ascii	"w\000"
	.align	2
$LC3:
	.ascii	"r\000"
	.align	2
$LC4:
	.ascii	"One or more errors encountered during Compile operation."
	.ascii	"\012\000"
	.align	2
$LC5:
	.ascii	"Compile operation completed successfully.\012\000"
	.align	2
$LC6:
	.ascii	"Results saved to %s\012\000"
	.text
	.align	2
	.globl	main
$LFB1502 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,48($fp)
	sw	$5,52($fp)
	lw	$3,48($fp)
	li	$2,5			# 0x5
	beq	$3,$2,$L3
	nop

	.option	pic0
	jal	_ZL20print_usage_and_exitv
	nop

	.option	pic2
	lw	$28,16($fp)
$L3:
	lw	$2,52($fp)
	addiu	$2,$2,8
	lw	$3,0($2)
	lw	$2,%got(stdout)($28)
	lw	$2,0($2)
	move	$6,$2
	lui	$2,%hi($LC2)
	addiu	$5,$2,%lo($LC2)
	move	$4,$3
	lw	$2,%call16(freopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,freopen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,52($fp)
	addiu	$2,$2,4
	lw	$3,0($2)
	lw	$2,%got(stdin)($28)
	lw	$2,0($2)
	move	$6,$2
	lui	$2,%hi($LC3)
	addiu	$5,$2,%lo($LC3)
	move	$4,$3
	lw	$2,%call16(freopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,freopen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%call16(_Z6Parse1v)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z6Parse1v
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,52($fp)
	lw	$2,8($2)
	sw	$2,24($fp)
	lw	$2,52($fp)
	lw	$2,12($2)
	sw	$2,28($fp)
	lw	$2,52($fp)
	lw	$2,16($2)
	sw	$2,32($fp)
	lw	$6,32($fp)
	lw	$5,28($fp)
	lw	$4,24($fp)
	lw	$2,%call16(_Z8assemblePKcS0_S0_)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z8assemblePKcS0_S0_
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,36($fp)
	lw	$2,36($fp)
	beq	$2,$0,$L4
	nop

	lui	$2,%hi($LC4)
	addiu	$4,$2,%lo($LC4)
	lw	$2,%call16(_Z12write_to_logPcz)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z12write_to_logPcz
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L5
	nop

$L4:
	lui	$2,%hi($LC5)
	addiu	$4,$2,%lo($LC5)
	lw	$2,%call16(_Z12write_to_logPcz)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z12write_to_logPcz
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L5:
	lw	$2,%call16(_Z15is_log_file_setv)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z15is_log_file_setv
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,$L6
	nop

	lw	$2,52($fp)
	addiu	$2,$2,16
	lw	$2,0($2)
	move	$5,$2
	lui	$2,%hi($LC6)
	addiu	$4,$2,%lo($LC6)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L6:
	lw	$2,36($fp)
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE1502:
	.size	main, .-main
	.align	2
$LFB1704 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z41__static_initialization_and_destruction_0ii
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,32($fp)
	sw	$5,36($fp)
	lw	$3,32($fp)
	li	$2,1			# 0x1
	bne	$3,$2,$L10
	nop

	lw	$3,36($fp)
	li	$2,65535			# 0xffff
	bne	$3,$2,$L10
	nop

	lui	$2,%hi(_ZStL8__ioinit)
	addiu	$4,$2,%lo(_ZStL8__ioinit)
	lw	$2,%call16(_ZNSt8ios_base4InitC1Ev)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_ZNSt8ios_base4InitC1Ev
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi(__dso_handle)
	addiu	$6,$2,%lo(__dso_handle)
	lui	$2,%hi(_ZStL8__ioinit)
	addiu	$5,$2,%lo(_ZStL8__ioinit)
	lw	$4,%got(_ZNSt8ios_base4InitD1Ev)($28)
	lw	$2,%call16(__cxa_atexit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_atexit
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L10:
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z41__static_initialization_and_destruction_0ii
	.cfi_endproc
$LFE1704:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
$LFB1705 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_GLOBAL__sub_I_main
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	li	$5,65535			# 0xffff
	li	$4,1			# 0x1
	.option	pic0
	jal	_Z41__static_initialization_and_destruction_0ii
	nop

	.option	pic2
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_GLOBAL__sub_I_main
	.cfi_endproc
$LFE1705:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.ctors,"aw",@progbits
	.align	2
	.word	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
