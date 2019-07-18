	.file	1 "translate.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.rdata
	.align	2
$LC0:
	.ascii	"li\000"
	.align	2
$LC1:
	.ascii	"addiu\000"
	.align	2
$LC2:
	.ascii	"$zero\000"
	.align	2
$LC3:
	.ascii	"%s %s %s %ld\012\000"
	.align	2
$LC4:
	.ascii	"lui\000"
	.align	2
$LC5:
	.ascii	"ori\000"
	.align	2
$LC6:
	.ascii	"%s %s %ld\012\000"
	.align	2
$LC7:
	.ascii	"blt\000"
	.align	2
$LC8:
	.ascii	"$at\000"
	.align	2
$LC9:
	.ascii	"slt\000"
	.align	2
$LC10:
	.ascii	"%s %s %s %s\012\000"
	.align	2
$LC11:
	.ascii	"bne\000"
	.align	2
$LC12:
	.ascii	"b\000"
	.align	2
$LC13:
	.ascii	"beq\000"
	.align	2
$LC14:
	.ascii	"move\000"
	.align	2
$LC15:
	.ascii	"or\000"
	.align	2
$LC16:
	.ascii	"nop\000"
	.align	2
$LC17:
	.ascii	"sll\000"
	.align	2
$LC18:
	.ascii	"0\000"
	.text
	.align	2
	.globl	_Z14write_pass_oneP8_IO_FILEPKcPPci
$LFB2 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z14write_pass_oneP8_IO_FILEPKcPPci
	.type	_Z14write_pass_oneP8_IO_FILEPKcPPci, @function
_Z14write_pass_oneP8_IO_FILEPKcPPci:
	.frame	$fp,96,$31		# vars= 56, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-96
	.cfi_def_cfa_offset 96
	sw	$31,92($sp)
	sw	$fp,88($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,44($fp)
	sw	$5,40($fp)
	sw	$6,36($fp)
	sw	$7,108($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,84($fp)
	lui	$2,%hi($LC0)
	addiu	$5,$2,%lo($LC0)
	lw	$4,40($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L2
	nop

	lw	$3,108($fp)
	li	$2,2			# 0x2
	beq	$3,$2,$L3
	nop

	move	$2,$0
	b	$L10
	nop

$L3:
	lw	$2,36($fp)
	addiu	$2,$2,4
	lw	$3,0($2)
	addiu	$2,$fp,52
	li	$7,-1			# 0xffffffffffffffff
	li	$6,-2147483648			# 0xffffffff80000000
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(_Z13translate_numPlPKcll)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_numPlPKcll
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,56($fp)
	lw	$3,56($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L5
	nop

	move	$2,$0
	b	$L10
	nop

$L5:
	lw	$3,52($fp)
	li	$2,65536			# 0x10000
	slt	$2,$3,$2
	beq	$2,$0,$L6
	nop

	lw	$2,52($fp)
	bgez	$2,$L7
	nop

$L6:
	lw	$2,52($fp)
	slt	$2,$2,-32768
	bne	$2,$0,$L8
	nop

	lw	$3,52($fp)
	li	$2,32768			# 0x8000
	slt	$2,$3,$2
	beq	$2,$0,$L8
	nop

$L7:
	lui	$2,%hi($LC1)
	addiu	$2,$2,%lo($LC1)
	sw	$2,76($fp)
	lui	$2,%hi($LC2)
	addiu	$2,$2,%lo($LC2)
	sw	$2,80($fp)
	lw	$2,36($fp)
	lw	$3,0($2)
	lw	$2,52($fp)
	sw	$2,20($sp)
	lw	$2,80($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,76($fp)
	lui	$2,%hi($LC3)
	addiu	$5,$2,%lo($LC3)
	lw	$4,44($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	b	$L9
	nop

$L8:
	lui	$2,%hi($LC4)
	addiu	$2,$2,%lo($LC4)
	sw	$2,60($fp)
	lui	$2,%hi($LC5)
	addiu	$2,$2,%lo($LC5)
	sw	$2,64($fp)
	lw	$2,52($fp)
	sra	$2,$2,16
	sw	$2,68($fp)
	lw	$2,36($fp)
	lw	$3,0($2)
	lw	$2,68($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,60($fp)
	lui	$2,%hi($LC6)
	addiu	$5,$2,%lo($LC6)
	lw	$4,44($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,52($fp)
	andi	$2,$2,0xffff
	sw	$2,72($fp)
	lw	$2,36($fp)
	lw	$4,0($2)
	lw	$2,36($fp)
	lw	$2,0($2)
	lw	$3,72($fp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	move	$7,$4
	lw	$6,64($fp)
	lui	$2,%hi($LC3)
	addiu	$5,$2,%lo($LC3)
	lw	$4,44($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L9:
	li	$2,2			# 0x2
	b	$L10
	nop

$L2:
	lui	$2,%hi($LC7)
	addiu	$5,$2,%lo($LC7)
	lw	$4,40($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L11
	nop

	lw	$3,108($fp)
	li	$2,3			# 0x3
	beq	$3,$2,$L12
	nop

	move	$2,$0
	b	$L10
	nop

$L12:
	lw	$2,36($fp)
	lw	$2,0($2)
	lw	$3,36($fp)
	addiu	$3,$3,4
	lw	$3,0($3)
	sw	$3,20($sp)
	sw	$2,16($sp)
	lui	$2,%hi($LC8)
	addiu	$7,$2,%lo($LC8)
	lui	$2,%hi($LC9)
	addiu	$6,$2,%lo($LC9)
	lui	$2,%hi($LC10)
	addiu	$5,$2,%lo($LC10)
	lw	$4,44($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$2,$2,8
	lw	$2,0($2)
	sw	$2,20($sp)
	lui	$2,%hi($LC2)
	addiu	$2,$2,%lo($LC2)
	sw	$2,16($sp)
	lui	$2,%hi($LC8)
	addiu	$7,$2,%lo($LC8)
	lui	$2,%hi($LC11)
	addiu	$6,$2,%lo($LC11)
	lui	$2,%hi($LC10)
	addiu	$5,$2,%lo($LC10)
	lw	$4,44($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$2,2			# 0x2
	b	$L10
	nop

$L11:
	lui	$2,%hi($LC12)
	addiu	$5,$2,%lo($LC12)
	lw	$4,40($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L13
	nop

	lw	$3,108($fp)
	li	$2,1			# 0x1
	beq	$3,$2,$L14
	nop

	move	$2,$0
	b	$L10
	nop

$L14:
	lw	$2,36($fp)
	lw	$2,0($2)
	sw	$2,20($sp)
	lui	$2,%hi($LC2)
	addiu	$2,$2,%lo($LC2)
	sw	$2,16($sp)
	lui	$2,%hi($LC2)
	addiu	$7,$2,%lo($LC2)
	lui	$2,%hi($LC13)
	addiu	$6,$2,%lo($LC13)
	lui	$2,%hi($LC10)
	addiu	$5,$2,%lo($LC10)
	lw	$4,44($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$2,2			# 0x2
	b	$L10
	nop

$L13:
	lui	$2,%hi($LC14)
	addiu	$5,$2,%lo($LC14)
	lw	$4,40($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L15
	nop

	lw	$3,108($fp)
	li	$2,2			# 0x2
	beq	$3,$2,$L16
	nop

	move	$2,$0
	b	$L10
	nop

$L16:
	lw	$2,36($fp)
	lw	$4,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	lui	$3,%hi($LC2)
	addiu	$3,$3,%lo($LC2)
	sw	$3,20($sp)
	sw	$2,16($sp)
	move	$7,$4
	lui	$2,%hi($LC15)
	addiu	$6,$2,%lo($LC15)
	lui	$2,%hi($LC10)
	addiu	$5,$2,%lo($LC10)
	lw	$4,44($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$2,2			# 0x2
	b	$L10
	nop

$L15:
	lui	$2,%hi($LC16)
	addiu	$5,$2,%lo($LC16)
	lw	$4,40($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L17
	nop

	lw	$2,108($fp)
	beq	$2,$0,$L18
	nop

	move	$2,$0
	b	$L10
	nop

$L18:
	lui	$2,%hi($LC18)
	addiu	$2,$2,%lo($LC18)
	sw	$2,20($sp)
	lui	$2,%hi($LC2)
	addiu	$2,$2,%lo($LC2)
	sw	$2,16($sp)
	lui	$2,%hi($LC2)
	addiu	$7,$2,%lo($LC2)
	lui	$2,%hi($LC17)
	addiu	$6,$2,%lo($LC17)
	lui	$2,%hi($LC10)
	addiu	$5,$2,%lo($LC10)
	lw	$4,44($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$2,2			# 0x2
	b	$L10
	nop

$L17:
	lw	$7,108($fp)
	lw	$6,36($fp)
	lw	$5,40($fp)
	lw	$4,44($fp)
	lw	$2,%call16(_Z17write_inst_stringP8_IO_FILEPKcPPci)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z17write_inst_stringP8_IO_FILEPKcPPci
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$2,1			# 0x1
$L10:
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,84($fp)
	lw	$3,0($3)
	beq	$4,$3,$L19
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L19:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,92($sp)
	lw	$fp,88($sp)
	addiu	$sp,$sp,96
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z14write_pass_oneP8_IO_FILEPKcPPci
	.cfi_endproc
$LFE2:
	.size	_Z14write_pass_oneP8_IO_FILEPKcPPci, .-_Z14write_pass_oneP8_IO_FILEPKcPPci
	.rdata
	.align	2
$LC19:
	.ascii	"addu\000"
	.align	2
$LC20:
	.ascii	"subu\000"
	.align	2
$LC21:
	.ascii	"sub\000"
	.align	2
$LC22:
	.ascii	"and\000"
	.align	2
$LC23:
	.ascii	"xor\000"
	.align	2
$LC24:
	.ascii	"sltu\000"
	.align	2
$LC25:
	.ascii	"sra\000"
	.align	2
$LC26:
	.ascii	"jr\000"
	.align	2
$LC27:
	.ascii	"andi\000"
	.align	2
$LC28:
	.ascii	"xori\000"
	.align	2
$LC29:
	.ascii	"lb\000"
	.align	2
$LC30:
	.ascii	"lbu\000"
	.align	2
$LC31:
	.ascii	"lw\000"
	.align	2
$LC32:
	.ascii	"sb\000"
	.align	2
$LC33:
	.ascii	"sw\000"
	.align	2
$LC34:
	.ascii	"j\000"
	.align	2
$LC35:
	.ascii	"jal\000"
	.align	2
$LC36:
	.ascii	"mflo\000"
	.align	2
$LC37:
	.ascii	"mfhi\000"
	.align	2
$LC38:
	.ascii	"div\000"
	.align	2
$LC39:
	.ascii	"mul\000"
	.align	2
$LC40:
	.ascii	"mtlo\000"
	.align	2
$LC41:
	.ascii	"mthi\000"
	.text
	.align	2
	.globl	_Z14translate_instP8_IO_FILEPKcPPcjjP11SymbolTableS6_
$LFB3 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z14translate_instP8_IO_FILEPKcPPcjjP11SymbolTableS6_
	.type	_Z14translate_instP8_IO_FILEPKcPPcjjP11SymbolTableS6_, @function
_Z14translate_instP8_IO_FILEPKcPPcjjP11SymbolTableS6_:
	.frame	$fp,40,$31		# vars= 0, regs= 2/0, args= 24, gp= 8
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
	.cprestore	24
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	lui	$2,%hi($LC19)
	addiu	$5,$2,%lo($LC19)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L21
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,33			# 0x21
	.option	pic0
	jal	_Z11write_rtypehP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L21:
	lui	$2,%hi($LC20)
	addiu	$5,$2,%lo($LC20)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L23
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,35			# 0x23
	.option	pic0
	jal	_Z11write_rtypehP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L23:
	lui	$2,%hi($LC21)
	addiu	$5,$2,%lo($LC21)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L24
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,34			# 0x22
	.option	pic0
	jal	_Z11write_rtypehP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L24:
	lui	$2,%hi($LC22)
	addiu	$5,$2,%lo($LC22)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L25
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,36			# 0x24
	.option	pic0
	jal	_Z11write_rtypehP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L25:
	lui	$2,%hi($LC23)
	addiu	$5,$2,%lo($LC23)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L26
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,38			# 0x26
	.option	pic0
	jal	_Z11write_rtypehP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L26:
	lui	$2,%hi($LC15)
	addiu	$5,$2,%lo($LC15)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L27
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,37			# 0x25
	.option	pic0
	jal	_Z11write_rtypehP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L27:
	lui	$2,%hi($LC9)
	addiu	$5,$2,%lo($LC9)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L28
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,42			# 0x2a
	.option	pic0
	jal	_Z11write_rtypehP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L28:
	lui	$2,%hi($LC24)
	addiu	$5,$2,%lo($LC24)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L29
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,43			# 0x2b
	.option	pic0
	jal	_Z11write_rtypehP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L29:
	lui	$2,%hi($LC17)
	addiu	$5,$2,%lo($LC17)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L30
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	move	$4,$0
	.option	pic0
	jal	_Z11write_shifthP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L30:
	lui	$2,%hi($LC25)
	addiu	$5,$2,%lo($LC25)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L31
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,3			# 0x3
	.option	pic0
	jal	_Z11write_shifthP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L31:
	lui	$2,%hi($LC26)
	addiu	$5,$2,%lo($LC26)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L32
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,8			# 0x8
	.option	pic0
	jal	_Z8write_jrhP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L32:
	lui	$2,%hi($LC1)
	addiu	$5,$2,%lo($LC1)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L33
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,9			# 0x9
	.option	pic0
	jal	_Z12write_ritypehP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L33:
	lui	$2,%hi($LC5)
	addiu	$5,$2,%lo($LC5)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L34
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,13			# 0xd
	.option	pic0
	jal	_Z12write_ritypehP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L34:
	lui	$2,%hi($LC27)
	addiu	$5,$2,%lo($LC27)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L35
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,12			# 0xc
	.option	pic0
	jal	_Z12write_ritypehP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L35:
	lui	$2,%hi($LC28)
	addiu	$5,$2,%lo($LC28)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L36
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,14			# 0xe
	.option	pic0
	jal	_Z12write_ritypehP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L36:
	lui	$2,%hi($LC4)
	addiu	$5,$2,%lo($LC4)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L37
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,15			# 0xf
	.option	pic0
	jal	_Z9write_luihP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L37:
	lui	$2,%hi($LC29)
	addiu	$5,$2,%lo($LC29)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L38
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,32			# 0x20
	.option	pic0
	jal	_Z9write_memhP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L38:
	lui	$2,%hi($LC30)
	addiu	$5,$2,%lo($LC30)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L39
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,36			# 0x24
	.option	pic0
	jal	_Z9write_memhP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L39:
	lui	$2,%hi($LC31)
	addiu	$5,$2,%lo($LC31)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L40
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,35			# 0x23
	.option	pic0
	jal	_Z9write_memhP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L40:
	lui	$2,%hi($LC32)
	addiu	$5,$2,%lo($LC32)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L41
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,40			# 0x28
	.option	pic0
	jal	_Z9write_memhP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L41:
	lui	$2,%hi($LC33)
	addiu	$5,$2,%lo($LC33)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L42
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,43			# 0x2b
	.option	pic0
	jal	_Z9write_memhP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L42:
	lui	$2,%hi($LC13)
	addiu	$5,$2,%lo($LC13)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L43
	nop

	lw	$2,60($fp)
	sw	$2,20($sp)
	lw	$2,56($fp)
	sw	$2,16($sp)
	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,4			# 0x4
	.option	pic0
	jal	_Z12write_branchhP8_IO_FILEPPcjjP11SymbolTable
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L43:
	lui	$2,%hi($LC11)
	addiu	$5,$2,%lo($LC11)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L44
	nop

	lw	$2,60($fp)
	sw	$2,20($sp)
	lw	$2,56($fp)
	sw	$2,16($sp)
	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,5			# 0x5
	.option	pic0
	jal	_Z12write_branchhP8_IO_FILEPPcjjP11SymbolTable
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L44:
	lui	$2,%hi($LC34)
	addiu	$5,$2,%lo($LC34)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L45
	nop

	lw	$2,64($fp)
	sw	$2,20($sp)
	lw	$2,56($fp)
	sw	$2,16($sp)
	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,2			# 0x2
	.option	pic0
	jal	_Z10write_jumphP8_IO_FILEPPcjjP11SymbolTable
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L45:
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L46
	nop

	lw	$2,64($fp)
	sw	$2,20($sp)
	lw	$2,56($fp)
	sw	$2,16($sp)
	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,3			# 0x3
	.option	pic0
	jal	_Z10write_jumphP8_IO_FILEPPcjjP11SymbolTable
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L46:
	lui	$2,%hi($LC36)
	addiu	$5,$2,%lo($LC36)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L47
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,18			# 0x12
	.option	pic0
	jal	_Z11write_fetchhP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L47:
	lui	$2,%hi($LC37)
	addiu	$5,$2,%lo($LC37)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L48
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,16			# 0x10
	.option	pic0
	jal	_Z11write_fetchhP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L48:
	lui	$2,%hi($LC38)
	addiu	$5,$2,%lo($LC38)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L49
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,26			# 0x1a
	.option	pic0
	jal	_Z9write_divhP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L49:
	lui	$2,%hi($LC39)
	addiu	$5,$2,%lo($LC39)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L50
	nop

	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,40($fp)
	li	$4,2			# 0x2
	.option	pic0
	jal	_Z9write_mulhP8_IO_FILEPPcj
	nop

	.option	pic2
	lw	$28,24($fp)
	b	$L22
	nop

$L50:
	lui	$2,%hi($LC40)
	addiu	$5,$2,%lo($LC40)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L51
	nop

	li	$2,65535			# 0xffff
	b	$L22
	nop

$L51:
	lui	$2,%hi($LC41)
	addiu	$5,$2,%lo($LC41)
	lw	$4,44($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L52
	nop

	li	$2,65535			# 0xffff
	b	$L22
	nop

$L52:
	li	$2,-1			# 0xffffffffffffffff
$L22:
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
	.end	_Z14translate_instP8_IO_FILEPKcPPcjjP11SymbolTableS6_
	.cfi_endproc
$LFE3:
	.size	_Z14translate_instP8_IO_FILEPKcPPcjjP11SymbolTableS6_, .-_Z14translate_instP8_IO_FILEPKcPPcjjP11SymbolTableS6_
	.align	2
	.globl	_Z11write_rtypehP8_IO_FILEPPcj
$LFB4 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z11write_rtypehP8_IO_FILEPPcj
	.type	_Z11write_rtypehP8_IO_FILEPPcj, @function
_Z11write_rtypehP8_IO_FILEPPcj:
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
	move	$2,$4
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	sb	$2,48($fp)
	lw	$3,60($fp)
	li	$2,3			# 0x3
	beq	$3,$2,$L54
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L55
	nop

$L54:
	lw	$2,56($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,56($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,28($fp)
	lw	$2,56($fp)
	addiu	$2,$2,8
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,32($fp)
	lw	$3,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L56
	nop

	lw	$3,28($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L56
	nop

	lw	$3,32($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L57
	nop

$L56:
	li	$2,-1			# 0xffffffffffffffff
	b	$L55
	nop

$L57:
	lw	$2,28($fp)
	sll	$3,$2,21
	lw	$2,32($fp)
	sll	$2,$2,16
	or	$3,$3,$2
	lw	$2,24($fp)
	sll	$2,$2,11
	or	$3,$3,$2
	lbu	$2,48($fp)
	or	$2,$3,$2
	sw	$2,36($fp)
	lw	$5,36($fp)
	lw	$4,52($fp)
	lw	$2,%call16(_Z14write_inst_hexP8_IO_FILEj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z14write_inst_hexP8_IO_FILEj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
$L55:
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
	.end	_Z11write_rtypehP8_IO_FILEPPcj
	.cfi_endproc
$LFE4:
	.size	_Z11write_rtypehP8_IO_FILEPPcj, .-_Z11write_rtypehP8_IO_FILEPPcj
	.align	2
	.globl	_Z11write_shifthP8_IO_FILEPPcj
$LFB5 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z11write_shifthP8_IO_FILEPPcj
	.type	_Z11write_shifthP8_IO_FILEPPcj, @function
_Z11write_shifthP8_IO_FILEPPcj:
	.frame	$fp,64,$31		# vars= 32, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	.cfi_def_cfa_offset 64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$2,$4
	sw	$5,28($fp)
	sw	$6,24($fp)
	sw	$7,76($fp)
	sb	$2,64($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,52($fp)
	lw	$3,76($fp)
	li	$2,3			# 0x3
	beq	$3,$2,$L59
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L63
	nop

$L59:
	lw	$2,24($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,36($fp)
	lw	$2,24($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,40($fp)
	lw	$2,24($fp)
	addiu	$2,$2,8
	lw	$3,0($2)
	addiu	$2,$fp,32
	li	$7,31			# 0x1f
	move	$6,$0
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(_Z13translate_numPlPKcll)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_numPlPKcll
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,44($fp)
	lw	$3,36($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L61
	nop

	lw	$3,40($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L61
	nop

	lw	$3,44($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L62
	nop

$L61:
	li	$2,-1			# 0xffffffffffffffff
	b	$L63
	nop

$L62:
	lw	$2,40($fp)
	sll	$3,$2,16
	lw	$2,36($fp)
	sll	$2,$2,11
	or	$3,$3,$2
	lw	$2,32($fp)
	sll	$2,$2,6
	or	$3,$3,$2
	lbu	$2,64($fp)
	or	$2,$3,$2
	sw	$2,48($fp)
	lw	$5,48($fp)
	lw	$4,28($fp)
	lw	$2,%call16(_Z14write_inst_hexP8_IO_FILEj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z14write_inst_hexP8_IO_FILEj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
$L63:
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,52($fp)
	lw	$3,0($3)
	beq	$4,$3,$L64
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L64:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z11write_shifthP8_IO_FILEPPcj
	.cfi_endproc
$LFE5:
	.size	_Z11write_shifthP8_IO_FILEPPcj, .-_Z11write_shifthP8_IO_FILEPPcj
	.align	2
	.globl	_Z8write_jrhP8_IO_FILEPPcj
$LFB6 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z8write_jrhP8_IO_FILEPPcj
	.type	_Z8write_jrhP8_IO_FILEPPcj, @function
_Z8write_jrhP8_IO_FILEPPcj:
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
	move	$2,$4
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	sb	$2,40($fp)
	lw	$3,52($fp)
	li	$2,1			# 0x1
	beq	$3,$2,$L66
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L67
	nop

$L66:
	lw	$2,48($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$3,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L68
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L67
	nop

$L68:
	lw	$2,24($fp)
	sll	$3,$2,21
	lbu	$2,40($fp)
	or	$2,$3,$2
	sw	$2,28($fp)
	lw	$5,28($fp)
	lw	$4,44($fp)
	lw	$2,%call16(_Z14write_inst_hexP8_IO_FILEj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z14write_inst_hexP8_IO_FILEj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
$L67:
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
	.end	_Z8write_jrhP8_IO_FILEPPcj
	.cfi_endproc
$LFE6:
	.size	_Z8write_jrhP8_IO_FILEPPcj, .-_Z8write_jrhP8_IO_FILEPPcj
	.align	2
	.globl	_Z12write_ritypehP8_IO_FILEPPcj
$LFB7 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z12write_ritypehP8_IO_FILEPPcj
	.type	_Z12write_ritypehP8_IO_FILEPPcj, @function
_Z12write_ritypehP8_IO_FILEPPcj:
	.frame	$fp,64,$31		# vars= 32, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	.cfi_def_cfa_offset 64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$2,$4
	sw	$5,28($fp)
	sw	$6,24($fp)
	sw	$7,76($fp)
	sb	$2,64($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,52($fp)
	lw	$3,76($fp)
	li	$2,3			# 0x3
	beq	$3,$2,$L70
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L77
	nop

$L70:
	lw	$2,24($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,40($fp)
	lw	$2,24($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,44($fp)
	lw	$3,40($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L72
	nop

	lw	$3,44($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L73
	nop

$L72:
	li	$2,-1			# 0xffffffffffffffff
	b	$L77
	nop

$L73:
	lw	$2,24($fp)
	addiu	$2,$2,8
	lw	$3,0($2)
	addiu	$2,$fp,32
	li	$7,32767			# 0x7fff
	li	$6,-32768			# 0xffffffffffff8000
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(_Z13translate_numPlPKcll)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_numPlPKcll
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,48($fp)
	lw	$3,48($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L74
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L77
	nop

$L74:
	lw	$2,32($fp)
	bgez	$2,$L75
	nop

	lw	$2,32($fp)
	andi	$2,$2,0xffff
	sw	$2,32($fp)
	lbu	$2,64($fp)
	sll	$3,$2,26
	lw	$2,44($fp)
	sll	$2,$2,21
	or	$3,$3,$2
	lw	$2,40($fp)
	sll	$2,$2,16
	or	$3,$3,$2
	lw	$2,32($fp)
	or	$2,$3,$2
	sw	$2,36($fp)
	b	$L76
	nop

$L75:
	lbu	$2,64($fp)
	sll	$3,$2,26
	lw	$2,44($fp)
	sll	$2,$2,21
	or	$3,$3,$2
	lw	$2,40($fp)
	sll	$2,$2,16
	or	$3,$3,$2
	lw	$2,32($fp)
	or	$2,$3,$2
	sw	$2,36($fp)
$L76:
	lw	$5,36($fp)
	lw	$4,28($fp)
	lw	$2,%call16(_Z14write_inst_hexP8_IO_FILEj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z14write_inst_hexP8_IO_FILEj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
$L77:
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,52($fp)
	lw	$3,0($3)
	beq	$4,$3,$L78
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L78:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z12write_ritypehP8_IO_FILEPPcj
	.cfi_endproc
$LFE7:
	.size	_Z12write_ritypehP8_IO_FILEPPcj, .-_Z12write_ritypehP8_IO_FILEPPcj
	.align	2
	.globl	_Z9write_luihP8_IO_FILEPPcj
$LFB8 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z9write_luihP8_IO_FILEPPcj
	.type	_Z9write_luihP8_IO_FILEPPcj, @function
_Z9write_luihP8_IO_FILEPPcj:
	.frame	$fp,64,$31		# vars= 32, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	.cfi_def_cfa_offset 64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$2,$4
	sw	$5,28($fp)
	sw	$6,24($fp)
	sw	$7,76($fp)
	sb	$2,64($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,52($fp)
	lw	$3,76($fp)
	li	$2,2			# 0x2
	beq	$3,$2,$L80
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L84
	nop

$L80:
	lw	$2,24($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,40($fp)
	lw	$3,40($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L82
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L84
	nop

$L82:
	lw	$2,24($fp)
	addiu	$2,$2,4
	lw	$4,0($2)
	addiu	$3,$fp,36
	li	$2,2147418112			# 0x7fff0000
	ori	$7,$2,0xffff
	li	$6,-2147483648			# 0xffffffff80000000
	move	$5,$4
	move	$4,$3
	lw	$2,%call16(_Z13translate_numPlPKcll)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_numPlPKcll
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,44($fp)
	lw	$3,44($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L83
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L84
	nop

$L83:
	lbu	$2,64($fp)
	sll	$3,$2,26
	lw	$2,40($fp)
	sll	$2,$2,16
	or	$3,$3,$2
	lw	$2,36($fp)
	or	$2,$3,$2
	sw	$2,48($fp)
	lw	$5,48($fp)
	lw	$4,28($fp)
	lw	$2,%call16(_Z14write_inst_hexP8_IO_FILEj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z14write_inst_hexP8_IO_FILEj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
$L84:
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,52($fp)
	lw	$3,0($3)
	beq	$4,$3,$L85
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L85:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z9write_luihP8_IO_FILEPPcj
	.cfi_endproc
$LFE8:
	.size	_Z9write_luihP8_IO_FILEPPcj, .-_Z9write_luihP8_IO_FILEPPcj
	.align	2
	.globl	_Z9write_memhP8_IO_FILEPPcj
$LFB9 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z9write_memhP8_IO_FILEPPcj
	.type	_Z9write_memhP8_IO_FILEPPcj, @function
_Z9write_memhP8_IO_FILEPPcj:
	.frame	$fp,64,$31		# vars= 32, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	.cfi_def_cfa_offset 64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$2,$4
	sw	$5,28($fp)
	sw	$6,24($fp)
	sw	$7,76($fp)
	sb	$2,64($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,52($fp)
	lw	$3,76($fp)
	li	$2,3			# 0x3
	beq	$3,$2,$L87
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L94
	nop

$L87:
	lw	$2,24($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,40($fp)
	lw	$2,24($fp)
	addiu	$2,$2,8
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,44($fp)
	lw	$3,44($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L89
	nop

	lw	$3,40($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L90
	nop

$L89:
	li	$2,-1			# 0xffffffffffffffff
	b	$L94
	nop

$L90:
	lw	$2,24($fp)
	addiu	$2,$2,4
	lw	$3,0($2)
	addiu	$2,$fp,32
	li	$7,32767			# 0x7fff
	li	$6,-32768			# 0xffffffffffff8000
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(_Z13translate_numPlPKcll)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_numPlPKcll
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,48($fp)
	lw	$3,48($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L91
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L94
	nop

$L91:
	lw	$2,32($fp)
	bgez	$2,$L92
	nop

	lw	$2,32($fp)
	andi	$2,$2,0xffff
	sw	$2,32($fp)
	lbu	$2,64($fp)
	sll	$3,$2,26
	lw	$2,44($fp)
	sll	$2,$2,21
	or	$3,$3,$2
	lw	$2,40($fp)
	sll	$2,$2,16
	or	$3,$3,$2
	lw	$2,32($fp)
	or	$2,$3,$2
	sw	$2,36($fp)
	b	$L93
	nop

$L92:
	lbu	$2,64($fp)
	sll	$3,$2,26
	lw	$2,44($fp)
	sll	$2,$2,21
	or	$3,$3,$2
	lw	$2,40($fp)
	sll	$2,$2,16
	or	$3,$3,$2
	lw	$2,32($fp)
	or	$2,$3,$2
	sw	$2,36($fp)
$L93:
	lw	$5,36($fp)
	lw	$4,28($fp)
	lw	$2,%call16(_Z14write_inst_hexP8_IO_FILEj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z14write_inst_hexP8_IO_FILEj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
$L94:
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,52($fp)
	lw	$3,0($3)
	beq	$4,$3,$L95
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L95:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z9write_memhP8_IO_FILEPPcj
	.cfi_endproc
$LFE9:
	.size	_Z9write_memhP8_IO_FILEPPcj, .-_Z9write_memhP8_IO_FILEPPcj
	.align	2
	.globl	_Z11write_fetchhP8_IO_FILEPPcj
$LFB10 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z11write_fetchhP8_IO_FILEPPcj
	.type	_Z11write_fetchhP8_IO_FILEPPcj, @function
_Z11write_fetchhP8_IO_FILEPPcj:
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
	move	$2,$4
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	sb	$2,40($fp)
	lw	$3,52($fp)
	li	$2,1			# 0x1
	beq	$3,$2,$L97
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L98
	nop

$L97:
	lw	$2,48($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$3,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L99
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L98
	nop

$L99:
	lw	$2,24($fp)
	sll	$3,$2,11
	lbu	$2,40($fp)
	or	$2,$3,$2
	sw	$2,28($fp)
	lw	$5,28($fp)
	lw	$4,44($fp)
	lw	$2,%call16(_Z14write_inst_hexP8_IO_FILEj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z14write_inst_hexP8_IO_FILEj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
$L98:
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
	.end	_Z11write_fetchhP8_IO_FILEPPcj
	.cfi_endproc
$LFE10:
	.size	_Z11write_fetchhP8_IO_FILEPPcj, .-_Z11write_fetchhP8_IO_FILEPPcj
	.align	2
	.globl	_Z12write_branchhP8_IO_FILEPPcjjP11SymbolTable
$LFB11 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z12write_branchhP8_IO_FILEPPcjjP11SymbolTable
	.type	_Z12write_branchhP8_IO_FILEPPcjjP11SymbolTable, @function
_Z12write_branchhP8_IO_FILEPPcjjP11SymbolTable:
	.frame	$fp,64,$31		# vars= 32, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	.cfi_def_cfa_offset 64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$2,$4
	sw	$5,68($fp)
	sw	$6,72($fp)
	sw	$7,76($fp)
	sb	$2,64($fp)
	lw	$3,76($fp)
	li	$2,3			# 0x3
	beq	$3,$2,$L101
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L102
	nop

$L101:
	lw	$2,72($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,72($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,28($fp)
	lw	$3,28($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L103
	nop

	lw	$3,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L104
	nop

$L103:
	li	$2,-1			# 0xffffffffffffffff
	b	$L102
	nop

$L104:
	lw	$2,72($fp)
	lw	$2,8($2)
	sw	$2,32($fp)
	lw	$5,32($fp)
	lw	$4,84($fp)
	lw	$2,%call16(_Z19get_addr_for_symbolP11SymbolTablePKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z19get_addr_for_symbolP11SymbolTablePKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,48($fp)
	sw	$3,52($fp)
	lw	$3,48($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L105
	nop

	lw	$3,52($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L105
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L102
	nop

$L105:
	lw	$3,48($fp)
	lw	$2,80($fp)
	subu	$2,$3,$2
	addiu	$2,$2,-4
	sw	$2,36($fp)
	lw	$2,36($fp)
	andi	$2,$2,0x3
	beq	$2,$0,$L106
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L102
	nop

$L106:
	lw	$2,36($fp)
	srl	$2,$2,2
	sw	$2,36($fp)
	lw	$2,36($fp)
	andi	$2,$2,0xffff
	sw	$2,40($fp)
	lbu	$2,64($fp)
	sll	$3,$2,26
	lw	$2,24($fp)
	sll	$2,$2,21
	or	$3,$3,$2
	lw	$2,28($fp)
	sll	$2,$2,16
	or	$3,$3,$2
	lw	$2,40($fp)
	or	$2,$3,$2
	sw	$2,44($fp)
	lw	$5,44($fp)
	lw	$4,68($fp)
	lw	$2,%call16(_Z14write_inst_hexP8_IO_FILEj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z14write_inst_hexP8_IO_FILEj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
$L102:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z12write_branchhP8_IO_FILEPPcjjP11SymbolTable
	.cfi_endproc
$LFE11:
	.size	_Z12write_branchhP8_IO_FILEPPcjjP11SymbolTable, .-_Z12write_branchhP8_IO_FILEPPcjjP11SymbolTable
	.align	2
	.globl	_Z10write_jumphP8_IO_FILEPPcjjP11SymbolTable
$LFB12 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z10write_jumphP8_IO_FILEPPcjjP11SymbolTable
	.type	_Z10write_jumphP8_IO_FILEPPcjjP11SymbolTable, @function
_Z10write_jumphP8_IO_FILEPPcjjP11SymbolTable:
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
	move	$2,$4
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	sb	$2,40($fp)
	lw	$3,52($fp)
	li	$2,1			# 0x1
	beq	$3,$2,$L108
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L109
	nop

$L108:
	lw	$2,48($fp)
	lw	$2,0($2)
	lw	$6,56($fp)
	move	$5,$2
	lw	$4,60($fp)
	lw	$2,%call16(_Z12add_to_tableP11SymbolTablePKcj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z12add_to_tableP11SymbolTablePKcj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lbu	$2,40($fp)
	sll	$2,$2,26
	sw	$2,28($fp)
	lw	$5,28($fp)
	lw	$4,44($fp)
	lw	$2,%call16(_Z14write_inst_hexP8_IO_FILEj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z14write_inst_hexP8_IO_FILEj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
$L109:
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
	.end	_Z10write_jumphP8_IO_FILEPPcjjP11SymbolTable
	.cfi_endproc
$LFE12:
	.size	_Z10write_jumphP8_IO_FILEPPcjjP11SymbolTable, .-_Z10write_jumphP8_IO_FILEPPcjjP11SymbolTable
	.align	2
	.globl	_Z9write_mulhP8_IO_FILEPPcj
$LFB13 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z9write_mulhP8_IO_FILEPPcj
	.type	_Z9write_mulhP8_IO_FILEPPcj, @function
_Z9write_mulhP8_IO_FILEPPcj:
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
	move	$2,$4
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	sb	$2,48($fp)
	lw	$3,60($fp)
	li	$2,3			# 0x3
	beq	$3,$2,$L111
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L112
	nop

$L111:
	lw	$2,56($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,56($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,28($fp)
	lw	$2,56($fp)
	addiu	$2,$2,8
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,32($fp)
	lw	$3,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L113
	nop

	lw	$3,28($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L113
	nop

	lw	$3,32($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L114
	nop

$L113:
	li	$2,-1			# 0xffffffffffffffff
	b	$L112
	nop

$L114:
	lw	$2,28($fp)
	sll	$3,$2,21
	li	$2,1879048192			# 0x70000000
	or	$3,$3,$2
	lw	$2,32($fp)
	sll	$2,$2,16
	or	$3,$3,$2
	lw	$2,24($fp)
	sll	$2,$2,11
	or	$3,$3,$2
	lbu	$2,48($fp)
	or	$2,$3,$2
	sw	$2,36($fp)
	lw	$5,36($fp)
	lw	$4,52($fp)
	lw	$2,%call16(_Z14write_inst_hexP8_IO_FILEj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z14write_inst_hexP8_IO_FILEj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
$L112:
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
	.end	_Z9write_mulhP8_IO_FILEPPcj
	.cfi_endproc
$LFE13:
	.size	_Z9write_mulhP8_IO_FILEPPcj, .-_Z9write_mulhP8_IO_FILEPPcj
	.align	2
	.globl	_Z9write_divhP8_IO_FILEPPcj
$LFB14 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z9write_divhP8_IO_FILEPPcj
	.type	_Z9write_divhP8_IO_FILEPPcj, @function
_Z9write_divhP8_IO_FILEPPcj:
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
	move	$2,$4
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	sb	$2,48($fp)
	lw	$3,60($fp)
	li	$2,3			# 0x3
	beq	$3,$2,$L116
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L117
	nop

$L116:
	lw	$2,56($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,28($fp)
	lw	$2,56($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z13translate_regPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z13translate_regPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,32($fp)
	lw	$3,28($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L118
	nop

	lw	$3,32($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L119
	nop

$L118:
	li	$2,-1			# 0xffffffffffffffff
	b	$L117
	nop

$L119:
	lw	$2,28($fp)
	sll	$3,$2,21
	lw	$2,32($fp)
	sll	$2,$2,16
	or	$3,$3,$2
	lbu	$2,48($fp)
	or	$2,$3,$2
	sw	$2,36($fp)
	lw	$5,36($fp)
	lw	$4,52($fp)
	lw	$2,%call16(_Z14write_inst_hexP8_IO_FILEj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z14write_inst_hexP8_IO_FILEj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
$L117:
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
	.end	_Z9write_divhP8_IO_FILEPPcj
	.cfi_endproc
$LFE14:
	.size	_Z9write_divhP8_IO_FILEPPcj, .-_Z9write_divhP8_IO_FILEPPcj
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
