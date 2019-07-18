	.file	1 "tables.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.globl	SYMTBL_NON_UNIQUE
	.rdata
	.align	2
	.type	SYMTBL_NON_UNIQUE, @object
	.size	SYMTBL_NON_UNIQUE, 4
SYMTBL_NON_UNIQUE:
	.space	4
	.globl	SYMTBL_UNIQUE_NAME
	.align	2
	.type	SYMTBL_UNIQUE_NAME, @object
	.size	SYMTBL_UNIQUE_NAME, 4
SYMTBL_UNIQUE_NAME:
	.word	1
	.align	2
$LC0:
	.ascii	"Error: allocation failed\012\000"
	.text
	.align	2
	.globl	_Z17allocation_failedv
$LFB2 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z17allocation_failedv
	.type	_Z17allocation_failedv, @function
_Z17allocation_failedv:
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
	lw	$2,%call16(_Z12write_to_logPcz)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z12write_to_logPcz
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	_Z17allocation_failedv
	.cfi_endproc
$LFE2:
	.size	_Z17allocation_failedv, .-_Z17allocation_failedv
	.rdata
	.align	2
$LC1:
	.ascii	"Error: address is not a multiple of 4.\012\000"
	.text
	.align	2
	.globl	_Z24addr_alignment_incorrectv
$LFB3 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z24addr_alignment_incorrectv
	.type	_Z24addr_alignment_incorrectv, @function
_Z24addr_alignment_incorrectv:
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
	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(_Z12write_to_logPcz)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z12write_to_logPcz
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
	.end	_Z24addr_alignment_incorrectv
	.cfi_endproc
$LFE3:
	.size	_Z24addr_alignment_incorrectv, .-_Z24addr_alignment_incorrectv
	.rdata
	.align	2
$LC2:
	.ascii	"Error: name '%s' already exists in table.\012\000"
	.text
	.align	2
	.globl	_Z19name_already_existsPKc
$LFB4 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z19name_already_existsPKc
	.type	_Z19name_already_existsPKc, @function
_Z19name_already_existsPKc:
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
	lw	$5,32($fp)
	lui	$2,%hi($LC2)
	addiu	$4,$2,%lo($LC2)
	lw	$2,%call16(_Z12write_to_logPcz)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z12write_to_logPcz
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
	.end	_Z19name_already_existsPKc
	.cfi_endproc
$LFE4:
	.size	_Z19name_already_existsPKc, .-_Z19name_already_existsPKc
	.rdata
	.align	2
$LC3:
	.ascii	"%u\011%s\012\000"
	.text
	.align	2
	.globl	_Z12write_symbolP8_IO_FILEjPKc
$LFB5 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z12write_symbolP8_IO_FILEjPKc
	.type	_Z12write_symbolP8_IO_FILEjPKc, @function
_Z12write_symbolP8_IO_FILEjPKc:
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
	sw	$6,40($fp)
	lw	$7,40($fp)
	lw	$6,36($fp)
	lui	$2,%hi($LC3)
	addiu	$5,$2,%lo($LC3)
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
	.end	_Z12write_symbolP8_IO_FILEjPKc
	.cfi_endproc
$LFE5:
	.size	_Z12write_symbolP8_IO_FILEjPKc, .-_Z12write_symbolP8_IO_FILEjPKc
	.align	2
	.globl	_Z12create_tablei
$LFB6 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z12create_tablei
	.type	_Z12create_tablei, @function
_Z12create_tablei:
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
	li	$4,16			# 0x10
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,28($fp)
	lw	$2,28($fp)
	bne	$2,$0,$L6
	nop

	.option	pic0
	jal	_Z17allocation_failedv
	nop

	.option	pic2
	lw	$28,16($fp)
$L6:
	lw	$2,28($fp)
	sw	$0,4($2)
	lw	$2,28($fp)
	lw	$3,40($fp)
	sw	$3,12($2)
	lw	$2,28($fp)
	li	$3,5			# 0x5
	sw	$3,8($2)
	li	$2,800			# 0x320
	move	$4,$2
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,28($fp)
	sw	$3,0($2)
	lw	$2,28($fp)
	lw	$2,0($2)
	bne	$2,$0,$L7
	nop

	.option	pic0
	jal	_Z17allocation_failedv
	nop

	.option	pic2
	lw	$28,16($fp)
$L7:
	lw	$2,28($fp)
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
	.end	_Z12create_tablei
	.cfi_endproc
$LFE6:
	.size	_Z12create_tablei, .-_Z12create_tablei
	.align	2
	.globl	_Z10free_tableP11SymbolTable
$LFB7 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z10free_tableP11SymbolTable
	.type	_Z10free_tableP11SymbolTable, @function
_Z10free_tableP11SymbolTable:
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
	lw	$2,4($2)
	sw	$2,28($fp)
	sw	$0,24($fp)
$L11:
	lw	$3,24($fp)
	lw	$2,28($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L10
	nop

	lw	$2,40($fp)
	lw	$3,0($2)
	lw	$2,24($fp)
	sll	$2,$2,3
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
	b	$L11
	nop

$L10:
	lw	$2,40($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,40($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
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
	.end	_Z10free_tableP11SymbolTable
	.cfi_endproc
$LFE7:
	.size	_Z10free_tableP11SymbolTable, .-_Z10free_tableP11SymbolTable
	.align	2
	.globl	_Z12add_to_tableP11SymbolTablePKcj
$LFB8 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z12add_to_tableP11SymbolTablePKcj
	.type	_Z12add_to_tableP11SymbolTablePKcj, @function
_Z12add_to_tableP11SymbolTablePKcj:
	.frame	$fp,112,$31		# vars= 48, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-112
	.cfi_def_cfa_offset 112
	sw	$31,108($sp)
	sw	$fp,104($sp)
	sw	$23,100($sp)
	sw	$22,96($sp)
	sw	$21,92($sp)
	sw	$20,88($sp)
	sw	$19,84($sp)
	sw	$18,80($sp)
	sw	$17,76($sp)
	sw	$16,72($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 23, -12
	.cfi_offset 22, -16
	.cfi_offset 21, -20
	.cfi_offset 20, -24
	.cfi_offset 19, -28
	.cfi_offset 18, -32
	.cfi_offset 17, -36
	.cfi_offset 16, -40
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,32($fp)
	sw	$6,120($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,68($fp)
	move	$2,$sp
	sw	$2,28($fp)
	lw	$2,120($fp)
	andi	$2,$2,0x3
	beq	$2,$0,$L13
	nop

	.option	pic0
	jal	_Z24addr_alignment_incorrectv
	nop

	.option	pic2
	lw	$28,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	b	$L14
	nop

$L13:
	lw	$4,32($fp)
	lw	$2,%call16(strlen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,48($fp)
	move	$3,$2
	addiu	$3,$3,1
	move	$22,$3
	move	$23,$0
	srl	$3,$22,29
	sll	$19,$23,3
	or	$19,$3,$19
	sll	$18,$22,3
	move	$3,$2
	addiu	$3,$3,1
	move	$20,$3
	move	$21,$0
	srl	$3,$20,29
	sll	$17,$21,3
	or	$17,$3,$17
	sll	$16,$20,3
	addiu	$2,$2,1
	addiu	$2,$2,7
	srl	$2,$2,3
	sll	$2,$2,3
	subu	$sp,$sp,$2
	addiu	$2,$sp,16
	addiu	$2,$2,0
	sw	$2,52($fp)
	lw	$2,52($fp)
	lw	$5,32($fp)
	move	$4,$2
	lw	$2,%call16(strcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,36($fp)
	lw	$3,12($2)
	li	$2,1			# 0x1
	bne	$3,$2,$L15
	nop

	lw	$2,36($fp)
	lw	$2,4($2)
	sw	$2,56($fp)
	sw	$0,44($fp)
$L18:
	lw	$3,44($fp)
	lw	$2,56($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L15
	nop

	lw	$4,52($fp)
	lw	$2,36($fp)
	lw	$3,0($2)
	lw	$2,44($fp)
	sll	$2,$2,3
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$5,$2
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L17
	nop

	lw	$4,32($fp)
	.option	pic0
	jal	_Z19name_already_existsPKc
	nop

	.option	pic2
	lw	$28,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	b	$L14
	nop

$L17:
	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
	b	$L18
	nop

$L15:
	lw	$2,36($fp)
	lw	$3,4($2)
	lw	$2,36($fp)
	lw	$2,8($2)
	bne	$3,$2,$L19
	nop

	lw	$2,36($fp)
	lw	$3,8($2)
	move	$2,$3
	sll	$2,$2,2
	addu	$3,$2,$3
	lw	$2,36($fp)
	sw	$3,8($2)
	lw	$2,36($fp)
	lw	$3,0($2)
	lw	$2,36($fp)
	lw	$2,8($2)
	sll	$2,$2,3
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(realloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,realloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,36($fp)
	sw	$3,0($2)
	lw	$4,32($fp)
	lw	$2,%call16(strlen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$2,1
	sw	$2,60($fp)
	lw	$2,36($fp)
	lw	$3,0($2)
	lw	$2,36($fp)
	lw	$2,4($2)
	sll	$2,$2,3
	addu	$16,$3,$2
	lw	$2,60($fp)
	move	$4,$2
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,0($16)
	lw	$2,36($fp)
	lw	$3,0($2)
	lw	$2,36($fp)
	lw	$2,4($2)
	sll	$2,$2,3
	addu	$2,$3,$2
	lw	$2,0($2)
	lw	$3,52($fp)
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(strcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,36($fp)
	lw	$3,0($2)
	lw	$2,36($fp)
	lw	$2,4($2)
	sll	$2,$2,3
	addu	$2,$3,$2
	lw	$3,120($fp)
	sw	$3,4($2)
	lw	$2,36($fp)
	lw	$2,4($2)
	addiu	$3,$2,1
	lw	$2,36($fp)
	sw	$3,4($2)
	b	$L20
	nop

$L19:
	lw	$2,52($fp)
	move	$4,$2
	lw	$2,%call16(strlen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$2,1
	sw	$2,64($fp)
	lw	$2,36($fp)
	lw	$3,0($2)
	lw	$2,36($fp)
	lw	$2,4($2)
	sll	$2,$2,3
	addu	$16,$3,$2
	lw	$2,64($fp)
	move	$4,$2
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,0($16)
	lw	$2,36($fp)
	lw	$3,0($2)
	lw	$2,36($fp)
	lw	$2,4($2)
	sll	$2,$2,3
	addu	$2,$3,$2
	lw	$2,0($2)
	lw	$3,52($fp)
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(strcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,36($fp)
	lw	$3,0($2)
	lw	$2,36($fp)
	lw	$2,4($2)
	sll	$2,$2,3
	addu	$2,$3,$2
	lw	$3,120($fp)
	sw	$3,4($2)
	lw	$2,36($fp)
	lw	$2,4($2)
	addiu	$3,$2,1
	lw	$2,36($fp)
	sw	$3,4($2)
$L20:
	move	$2,$0
$L14:
	lw	$sp,28($fp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,68($fp)
	lw	$3,0($3)
	beq	$4,$3,$L22
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L22:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,108($sp)
	lw	$fp,104($sp)
	lw	$23,100($sp)
	lw	$22,96($sp)
	lw	$21,92($sp)
	lw	$20,88($sp)
	lw	$19,84($sp)
	lw	$18,80($sp)
	lw	$17,76($sp)
	lw	$16,72($sp)
	addiu	$sp,$sp,112
	.cfi_restore 16
	.cfi_restore 17
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z12add_to_tableP11SymbolTablePKcj
	.cfi_endproc
$LFE8:
	.size	_Z12add_to_tableP11SymbolTablePKcj, .-_Z12add_to_tableP11SymbolTablePKcj
	.align	2
	.globl	_Z19get_addr_for_symbolP11SymbolTablePKc
$LFB9 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z19get_addr_for_symbolP11SymbolTablePKc
	.type	_Z19get_addr_for_symbolP11SymbolTablePKc, @function
_Z19get_addr_for_symbolP11SymbolTablePKc:
	.frame	$fp,48,$31		# vars= 8, regs= 4/0, args= 16, gp= 8
	.mask	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 17, -12
	.cfi_offset 16, -16
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$0,28($fp)
$L27:
	lw	$2,48($fp)
	lw	$3,4($2)
	lw	$2,28($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L24
	nop

	lw	$2,48($fp)
	lw	$3,0($2)
	lw	$2,28($fp)
	sll	$2,$2,3
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$5,$2
	lw	$4,52($fp)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L25
	nop

	lw	$2,48($fp)
	lw	$3,0($2)
	lw	$2,28($fp)
	sll	$2,$2,3
	addu	$2,$3,$2
	lw	$2,4($2)
	move	$16,$2
	move	$17,$0
	b	$L26
	nop

$L25:
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	b	$L27
	nop

$L24:
	li	$16,-1			# 0xffffffffffffffff
	li	$17,-1			# 0xffffffffffffffff
$L26:
	move	$2,$16
	move	$3,$17
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	addiu	$sp,$sp,48
	.cfi_restore 16
	.cfi_restore 17
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z19get_addr_for_symbolP11SymbolTablePKc
	.cfi_endproc
$LFE9:
	.size	_Z19get_addr_for_symbolP11SymbolTablePKc, .-_Z19get_addr_for_symbolP11SymbolTablePKc
	.align	2
	.globl	_Z11write_tableP11SymbolTableP8_IO_FILE
$LFB10 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z11write_tableP11SymbolTableP8_IO_FILE
	.type	_Z11write_tableP11SymbolTableP8_IO_FILE, @function
_Z11write_tableP11SymbolTableP8_IO_FILE:
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
	sw	$4,64($fp)
	sw	$5,68($fp)
	sw	$0,28($fp)
$L30:
	lw	$2,64($fp)
	lw	$3,4($2)
	lw	$2,28($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L31
	nop

	lw	$2,64($fp)
	lw	$2,0($2)
	sw	$2,32($fp)
	lw	$2,28($fp)
	sll	$2,$2,3
	lw	$3,32($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,4($2)
	sw	$3,48($fp)
	sw	$2,52($fp)
	lw	$2,48($fp)
	sw	$2,36($fp)
	lw	$2,52($fp)
	sw	$2,40($fp)
	sw	$0,44($fp)
	lw	$2,40($fp)
	lw	$6,36($fp)
	move	$5,$2
	lw	$4,68($fp)
	.option	pic0
	jal	_Z12write_symbolP8_IO_FILEjPKc
	nop

	.option	pic2
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	b	$L30
	nop

$L31:
	nop
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
	.end	_Z11write_tableP11SymbolTableP8_IO_FILE
	.cfi_endproc
$LFE10:
	.size	_Z11write_tableP11SymbolTableP8_IO_FILE, .-_Z11write_tableP11SymbolTableP8_IO_FILE
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
