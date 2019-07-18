	.file	1 "utils.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.local	_ZL11output_file
	.comm	_ZL11output_file,4,4
	.text
	.align	2
	.globl	_Z15is_log_file_setv
$LFB0 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z15is_log_file_setv
	.type	_Z15is_log_file_setv, @function
_Z15is_log_file_setv:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	.cfi_def_cfa_offset 8
	sw	$fp,4($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$2,%hi(_ZL11output_file)
	lw	$2,%lo(_ZL11output_file)($2)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z15is_log_file_setv
	.cfi_endproc
$LFE0:
	.size	_Z15is_log_file_setv, .-_Z15is_log_file_setv
	.align	2
	.globl	_Z12set_log_filePKc
$LFB1 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z12set_log_filePKc
	.type	_Z12set_log_filePKc, @function
_Z12set_log_filePKc:
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
	lw	$2,32($fp)
	beq	$2,$0,$L4
	nop

	lui	$2,%hi(_ZL11output_file)
	lw	$3,32($fp)
	sw	$3,%lo(_ZL11output_file)($2)
	lw	$4,32($fp)
	lw	$2,%call16(unlink)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,unlink
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L6
	nop

$L4:
	lui	$2,%hi(_ZL11output_file)
	sw	$0,%lo(_ZL11output_file)($2)
$L6:
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
	.end	_Z12set_log_filePKc
	.cfi_endproc
$LFE1:
	.size	_Z12set_log_filePKc, .-_Z12set_log_filePKc
	.rdata
	.align	2
$LC0:
	.ascii	"a\000"
	.text
	.align	2
	.globl	_Z12write_to_logPcz
$LFB2 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z12write_to_logPcz
	.type	_Z12write_to_logPcz, @function
_Z12write_to_logPcz:
	.frame	$fp,56,$31		# vars= 24, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	.cfi_def_cfa_offset 56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	sw	$5,60($fp)
	sw	$6,64($fp)
	sw	$7,68($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,44($fp)
	lui	$2,%hi(_ZL11output_file)
	lw	$2,%lo(_ZL11output_file)($2)
	beq	$2,$0,$L8
	nop

	lui	$2,%hi(_ZL11output_file)
	lw	$3,%lo(_ZL11output_file)($2)
	lui	$2,%hi($LC0)
	addiu	$5,$2,%lo($LC0)
	move	$4,$3
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,40($fp)
	lw	$2,40($fp)
	beq	$2,$0,$L14
	nop

	addiu	$2,$fp,60
	sw	$2,36($fp)
	lw	$2,36($fp)
	move	$6,$2
	lw	$5,28($fp)
	lw	$4,40($fp)
	lw	$2,%call16(vfprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,vfprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,40($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L7
	nop

$L8:
	addiu	$2,$fp,60
	sw	$2,36($fp)
	lw	$2,%got(stderr)($28)
	lw	$2,0($2)
	lw	$3,36($fp)
	move	$6,$3
	lw	$5,28($fp)
	move	$4,$2
	lw	$2,%call16(vfprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,vfprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L7
	nop

$L14:
	nop
$L7:
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,44($fp)
	lw	$2,0($2)
	beq	$3,$2,$L13
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L13:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z12write_to_logPcz
	.cfi_endproc
$LFE2:
	.size	_Z12write_to_logPcz, .-_Z12write_to_logPcz
	.rdata
	.align	2
$LC1:
	.ascii	" %s\000"
	.text
	.align	2
	.globl	_Z8log_instPKcPPci
$LFB3 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z8log_instPKcPPci
	.type	_Z8log_instPKcPPci, @function
_Z8log_instPKcPPci:
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
	sw	$6,56($fp)
	lui	$2,%hi(_ZL11output_file)
	lw	$2,%lo(_ZL11output_file)($2)
	beq	$2,$0,$L16
	nop

	lui	$2,%hi(_ZL11output_file)
	lw	$3,%lo(_ZL11output_file)($2)
	lui	$2,%hi($LC0)
	addiu	$5,$2,%lo($LC0)
	move	$4,$3
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,36($fp)
	lw	$2,36($fp)
	beq	$2,$0,$L23
	nop

	lw	$5,36($fp)
	lw	$4,48($fp)
	lw	$2,%call16(fputs)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fputs
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$0,28($fp)
$L20:
	lw	$3,28($fp)
	lw	$2,56($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L19
	nop

	lw	$2,28($fp)
	sll	$2,$2,2
	lw	$3,52($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$6,$2
	lui	$2,%hi($LC1)
	addiu	$5,$2,%lo($LC1)
	lw	$4,36($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	b	$L20
	nop

$L19:
	lw	$5,36($fp)
	li	$4,10			# 0xa
	lw	$2,%call16(fputc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fputc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,36($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L15
	nop

$L16:
	lw	$2,%got(stderr)($28)
	lw	$2,0($2)
	move	$5,$2
	lw	$4,48($fp)
	lw	$2,%call16(fputs)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fputs
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$0,32($fp)
$L22:
	lw	$3,32($fp)
	lw	$2,56($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L21
	nop

	lw	$2,%got(stderr)($28)
	lw	$4,0($2)
	lw	$2,32($fp)
	sll	$2,$2,2
	lw	$3,52($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$6,$2
	lui	$2,%hi($LC1)
	addiu	$5,$2,%lo($LC1)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
	b	$L22
	nop

$L21:
	lw	$2,%got(stderr)($28)
	lw	$2,0($2)
	move	$5,$2
	li	$4,10			# 0xa
	lw	$2,%call16(fputc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fputc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L15
	nop

$L23:
	nop
$L15:
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
	.end	_Z8log_instPKcPPci
	.cfi_endproc
$LFE3:
	.size	_Z8log_instPKcPPci, .-_Z8log_instPKcPPci
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
