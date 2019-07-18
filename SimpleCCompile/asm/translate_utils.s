	.file	1 "translate_utils.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.rdata
	.align	2
$LC0:
	.ascii	" %s\000"
	.text
	.align	2
	.globl	_Z17write_inst_stringP8_IO_FILEPKcPPci
$LFB2 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z17write_inst_stringP8_IO_FILEPKcPPci
	.type	_Z17write_inst_stringP8_IO_FILEPKcPPci, @function
_Z17write_inst_stringP8_IO_FILEPKcPPci:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	.cfi_def_cfa_offset 40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	lw	$5,40($fp)
	lw	$4,44($fp)
	lw	$2,%call16(fputs)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fputs
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$0,28($fp)
$L3:
	lw	$3,28($fp)
	lw	$2,52($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L2
	nop

	lw	$2,28($fp)
	sll	$2,$2,2
	lw	$3,48($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$6,$2
	lui	$2,%hi($LC0)
	addiu	$5,$2,%lo($LC0)
	lw	$4,40($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	b	$L3
	nop

$L2:
	lw	$5,40($fp)
	li	$4,10			# 0xa
	lw	$2,%call16(fputc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fputc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z17write_inst_stringP8_IO_FILEPKcPPci
	.cfi_endproc
$LFE2:
	.size	_Z17write_inst_stringP8_IO_FILEPKcPPci, .-_Z17write_inst_stringP8_IO_FILEPKcPPci
	.rdata
	.align	2
$LC1:
	.ascii	"%08x\012\000"
	.text
	.align	2
	.globl	_Z14write_inst_hexP8_IO_FILEj
$LFB3 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z14write_inst_hexP8_IO_FILEj
	.type	_Z14write_inst_hexP8_IO_FILEj, @function
_Z14write_inst_hexP8_IO_FILEj:
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
	lw	$6,36($fp)
	lui	$2,%hi($LC1)
	addiu	$5,$2,%lo($LC1)
	lw	$4,32($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
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
	.end	_Z14write_inst_hexP8_IO_FILEj
	.cfi_endproc
$LFE3:
	.size	_Z14write_inst_hexP8_IO_FILEj, .-_Z14write_inst_hexP8_IO_FILEj
	.align	2
	.globl	_Z14is_valid_labelPKc
$LFB4 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z14is_valid_labelPKc
	.type	_Z14is_valid_labelPKc, @function
_Z14is_valid_labelPKc:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	.cfi_def_cfa_offset 40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,40($fp)
	lw	$2,40($fp)
	bne	$2,$0,$L6
	nop

	move	$2,$0
	b	$L7
	nop

$L6:
	li	$2,1			# 0x1
	sw	$2,28($fp)
$L12:
	lw	$2,40($fp)
	lb	$2,0($2)
	beq	$2,$0,$L8
	nop

	lw	$2,28($fp)
	beq	$2,$0,$L9
	nop

	lw	$2,40($fp)
	lb	$2,0($2)
	move	$4,$2
	lw	$2,%call16(isalpha)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,isalpha
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L10
	nop

	lw	$2,40($fp)
	lb	$3,0($2)
	li	$2,95			# 0x5f
	beq	$3,$2,$L10
	nop

	move	$2,$0
	b	$L7
	nop

$L10:
	sw	$0,28($fp)
	b	$L11
	nop

$L9:
	lw	$2,40($fp)
	lb	$2,0($2)
	move	$4,$2
	lw	$2,%call16(isalnum)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,isalnum
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L11
	nop

	lw	$2,40($fp)
	lb	$3,0($2)
	li	$2,95			# 0x5f
	beq	$3,$2,$L11
	nop

	move	$2,$0
	b	$L7
	nop

$L11:
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
	b	$L12
	nop

$L8:
	lw	$2,28($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
$L7:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z14is_valid_labelPKc
	.cfi_endproc
$LFE4:
	.size	_Z14is_valid_labelPKc, .-_Z14is_valid_labelPKc
	.align	2
	.globl	_Z13translate_numPlPKcll
$LFB5 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z13translate_numPlPKcll
	.type	_Z13translate_numPlPKcll, @function
_Z13translate_numPlPKcll:
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
	sw	$5,24($fp)
	sw	$6,64($fp)
	sw	$7,68($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,44($fp)
	lw	$2,24($fp)
	beq	$2,$0,$L14
	nop

	lw	$2,28($fp)
	bne	$2,$0,$L15
	nop

$L14:
	li	$2,-1			# 0xffffffffffffffff
	b	$L20
	nop

$L15:
	addiu	$2,$fp,36
	move	$6,$0
	move	$5,$2
	lw	$4,24($fp)
	lw	$2,%call16(strtol)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtol
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,40($fp)
	lw	$2,24($fp)
	lb	$3,0($2)
	li	$2,48			# 0x30
	bne	$3,$2,$L17
	nop

	lw	$2,28($fp)
	lw	$3,40($fp)
	sw	$3,0($2)
	move	$2,$0
	b	$L20
	nop

$L17:
	lw	$2,36($fp)
	lb	$2,0($2)
	beq	$2,$0,$L18
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L20
	nop

$L18:
	lw	$2,40($fp)
	beq	$2,$0,$L19
	nop

	lw	$3,40($fp)
	lw	$2,64($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L19
	nop

	lw	$3,40($fp)
	lw	$2,68($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L19
	nop

	lw	$2,28($fp)
	lw	$3,40($fp)
	sw	$3,0($2)
	move	$2,$0
	b	$L20
	nop

$L19:
	li	$2,-1			# 0xffffffffffffffff
$L20:
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,44($fp)
	lw	$3,0($3)
	beq	$4,$3,$L21
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L21:
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
	.end	_Z13translate_numPlPKcll
	.cfi_endproc
$LFE5:
	.size	_Z13translate_numPlPKcll, .-_Z13translate_numPlPKcll
	.rdata
	.align	2
$LC2:
	.ascii	"$zero\000"
	.align	2
$LC3:
	.ascii	"$0\000"
	.align	2
$LC4:
	.ascii	"$at\000"
	.align	2
$LC5:
	.ascii	"$1\000"
	.align	2
$LC6:
	.ascii	"$v0\000"
	.align	2
$LC7:
	.ascii	"$2\000"
	.align	2
$LC8:
	.ascii	"$v1\000"
	.align	2
$LC9:
	.ascii	"$3\000"
	.align	2
$LC10:
	.ascii	"$a0\000"
	.align	2
$LC11:
	.ascii	"$4\000"
	.align	2
$LC12:
	.ascii	"$a1\000"
	.align	2
$LC13:
	.ascii	"$5\000"
	.align	2
$LC14:
	.ascii	"$a2\000"
	.align	2
$LC15:
	.ascii	"$6\000"
	.align	2
$LC16:
	.ascii	"$a3\000"
	.align	2
$LC17:
	.ascii	"$7\000"
	.align	2
$LC18:
	.ascii	"$t0\000"
	.align	2
$LC19:
	.ascii	"$8\000"
	.align	2
$LC20:
	.ascii	"$t1\000"
	.align	2
$LC21:
	.ascii	"$9\000"
	.align	2
$LC22:
	.ascii	"$t2\000"
	.align	2
$LC23:
	.ascii	"$10\000"
	.align	2
$LC24:
	.ascii	"$t3\000"
	.align	2
$LC25:
	.ascii	"$11\000"
	.align	2
$LC26:
	.ascii	"$s0\000"
	.align	2
$LC27:
	.ascii	"$16\000"
	.align	2
$LC28:
	.ascii	"$s1\000"
	.align	2
$LC29:
	.ascii	"$17\000"
	.align	2
$LC30:
	.ascii	"$s2\000"
	.align	2
$LC31:
	.ascii	"$18\000"
	.align	2
$LC32:
	.ascii	"$s3\000"
	.align	2
$LC33:
	.ascii	"$19\000"
	.align	2
$LC34:
	.ascii	"$sp\000"
	.align	2
$LC35:
	.ascii	"$29\000"
	.align	2
$LC36:
	.ascii	"$ra\000"
	.align	2
$LC37:
	.ascii	"$31\000"
	.text
	.align	2
	.globl	_Z13translate_regPKc
$LFB6 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z13translate_regPKc
	.type	_Z13translate_regPKc, @function
_Z13translate_regPKc:
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
	lui	$2,%hi($LC2)
	addiu	$5,$2,%lo($LC2)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L23
	nop

	move	$2,$0
	b	$L24
	nop

$L23:
	lui	$2,%hi($LC3)
	addiu	$5,$2,%lo($LC3)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L25
	nop

	move	$2,$0
	b	$L24
	nop

$L25:
	lui	$2,%hi($LC4)
	addiu	$5,$2,%lo($LC4)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L26
	nop

	li	$2,1			# 0x1
	b	$L24
	nop

$L26:
	lui	$2,%hi($LC5)
	addiu	$5,$2,%lo($LC5)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L27
	nop

	li	$2,1			# 0x1
	b	$L24
	nop

$L27:
	lui	$2,%hi($LC6)
	addiu	$5,$2,%lo($LC6)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L28
	nop

	li	$2,2			# 0x2
	b	$L24
	nop

$L28:
	lui	$2,%hi($LC7)
	addiu	$5,$2,%lo($LC7)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L29
	nop

	li	$2,2			# 0x2
	b	$L24
	nop

$L29:
	lui	$2,%hi($LC8)
	addiu	$5,$2,%lo($LC8)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L30
	nop

	li	$2,3			# 0x3
	b	$L24
	nop

$L30:
	lui	$2,%hi($LC9)
	addiu	$5,$2,%lo($LC9)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L31
	nop

	li	$2,3			# 0x3
	b	$L24
	nop

$L31:
	lui	$2,%hi($LC10)
	addiu	$5,$2,%lo($LC10)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L32
	nop

	li	$2,4			# 0x4
	b	$L24
	nop

$L32:
	lui	$2,%hi($LC11)
	addiu	$5,$2,%lo($LC11)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L33
	nop

	li	$2,4			# 0x4
	b	$L24
	nop

$L33:
	lui	$2,%hi($LC12)
	addiu	$5,$2,%lo($LC12)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L34
	nop

	li	$2,5			# 0x5
	b	$L24
	nop

$L34:
	lui	$2,%hi($LC13)
	addiu	$5,$2,%lo($LC13)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L35
	nop

	li	$2,5			# 0x5
	b	$L24
	nop

$L35:
	lui	$2,%hi($LC14)
	addiu	$5,$2,%lo($LC14)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L36
	nop

	li	$2,6			# 0x6
	b	$L24
	nop

$L36:
	lui	$2,%hi($LC15)
	addiu	$5,$2,%lo($LC15)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L37
	nop

	li	$2,6			# 0x6
	b	$L24
	nop

$L37:
	lui	$2,%hi($LC16)
	addiu	$5,$2,%lo($LC16)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L38
	nop

	li	$2,7			# 0x7
	b	$L24
	nop

$L38:
	lui	$2,%hi($LC17)
	addiu	$5,$2,%lo($LC17)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L39
	nop

	li	$2,7			# 0x7
	b	$L24
	nop

$L39:
	lui	$2,%hi($LC18)
	addiu	$5,$2,%lo($LC18)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L40
	nop

	li	$2,8			# 0x8
	b	$L24
	nop

$L40:
	lui	$2,%hi($LC19)
	addiu	$5,$2,%lo($LC19)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L41
	nop

	li	$2,8			# 0x8
	b	$L24
	nop

$L41:
	lui	$2,%hi($LC20)
	addiu	$5,$2,%lo($LC20)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L42
	nop

	li	$2,9			# 0x9
	b	$L24
	nop

$L42:
	lui	$2,%hi($LC21)
	addiu	$5,$2,%lo($LC21)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L43
	nop

	li	$2,9			# 0x9
	b	$L24
	nop

$L43:
	lui	$2,%hi($LC22)
	addiu	$5,$2,%lo($LC22)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L44
	nop

	li	$2,10			# 0xa
	b	$L24
	nop

$L44:
	lui	$2,%hi($LC23)
	addiu	$5,$2,%lo($LC23)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L45
	nop

	li	$2,10			# 0xa
	b	$L24
	nop

$L45:
	lui	$2,%hi($LC24)
	addiu	$5,$2,%lo($LC24)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L46
	nop

	li	$2,11			# 0xb
	b	$L24
	nop

$L46:
	lui	$2,%hi($LC25)
	addiu	$5,$2,%lo($LC25)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L47
	nop

	li	$2,11			# 0xb
	b	$L24
	nop

$L47:
	lui	$2,%hi($LC26)
	addiu	$5,$2,%lo($LC26)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L48
	nop

	li	$2,16			# 0x10
	b	$L24
	nop

$L48:
	lui	$2,%hi($LC27)
	addiu	$5,$2,%lo($LC27)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L49
	nop

	li	$2,16			# 0x10
	b	$L24
	nop

$L49:
	lui	$2,%hi($LC28)
	addiu	$5,$2,%lo($LC28)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L50
	nop

	li	$2,17			# 0x11
	b	$L24
	nop

$L50:
	lui	$2,%hi($LC29)
	addiu	$5,$2,%lo($LC29)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L51
	nop

	li	$2,17			# 0x11
	b	$L24
	nop

$L51:
	lui	$2,%hi($LC30)
	addiu	$5,$2,%lo($LC30)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L52
	nop

	li	$2,18			# 0x12
	b	$L24
	nop

$L52:
	lui	$2,%hi($LC31)
	addiu	$5,$2,%lo($LC31)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L53
	nop

	li	$2,18			# 0x12
	b	$L24
	nop

$L53:
	lui	$2,%hi($LC32)
	addiu	$5,$2,%lo($LC32)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L54
	nop

	li	$2,19			# 0x13
	b	$L24
	nop

$L54:
	lui	$2,%hi($LC33)
	addiu	$5,$2,%lo($LC33)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L55
	nop

	li	$2,19			# 0x13
	b	$L24
	nop

$L55:
	lui	$2,%hi($LC34)
	addiu	$5,$2,%lo($LC34)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L56
	nop

	li	$2,29			# 0x1d
	b	$L24
	nop

$L56:
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L57
	nop

	li	$2,29			# 0x1d
	b	$L24
	nop

$L57:
	lui	$2,%hi($LC36)
	addiu	$5,$2,%lo($LC36)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L58
	nop

	li	$2,31			# 0x1f
	b	$L24
	nop

$L58:
	lui	$2,%hi($LC37)
	addiu	$5,$2,%lo($LC37)
	lw	$4,32($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L59
	nop

	li	$2,31			# 0x1f
	b	$L24
	nop

$L59:
	li	$2,-1			# 0xffffffffffffffff
$L24:
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
	.end	_Z13translate_regPKc
	.cfi_endproc
$LFE6:
	.size	_Z13translate_regPKc, .-_Z13translate_regPKc
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
