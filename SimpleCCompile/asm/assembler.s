	.file	1 "assembler.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.rdata
	.align	2
	.type	_ZL8MAX_ARGS, @object
	.size	_ZL8MAX_ARGS, 4
_ZL8MAX_ARGS:
	.word	3
	.align	2
	.type	_ZL8BUF_SIZE, @object
	.size	_ZL8BUF_SIZE, 4
_ZL8BUF_SIZE:
	.word	1024
	.globl	IGNORE_CHARS
	.align	2
$LC0:
	.ascii	" \014\012\015\011\013,()\000"
	.section	.data.rel.local,"aw",@progbits
	.align	2
	.type	IGNORE_CHARS, @object
	.size	IGNORE_CHARS, 4
IGNORE_CHARS:
	.word	$LC0
	.rdata
	.align	2
$LC1:
	.ascii	"Error - invalid label at line %d: %s\012\000"
	.text
	.align	2
$LFB2 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZL17raise_label_errorjPKc
	.type	_ZL17raise_label_errorjPKc, @function
_ZL17raise_label_errorjPKc:
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
	lw	$5,32($fp)
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
	.end	_ZL17raise_label_errorjPKc
	.cfi_endproc
$LFE2:
	.size	_ZL17raise_label_errorjPKc, .-_ZL17raise_label_errorjPKc
	.rdata
	.align	2
$LC2:
	.ascii	"Error - extra argument at line %d: %s\012\000"
	.text
	.align	2
$LFB3 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZL21raise_extra_arg_errorjPKc
	.type	_ZL21raise_extra_arg_errorjPKc, @function
_ZL21raise_extra_arg_errorjPKc:
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
	.end	_ZL21raise_extra_arg_errorjPKc
	.cfi_endproc
$LFE3:
	.size	_ZL21raise_extra_arg_errorjPKc, .-_ZL21raise_extra_arg_errorjPKc
	.rdata
	.align	2
$LC3:
	.ascii	"Error - invalid instruction at line %d: \000"
	.text
	.align	2
$LFB4 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZL16raise_inst_errorjPKcPPci
	.type	_ZL16raise_inst_errorjPKcPPci, @function
_ZL16raise_inst_errorjPKcPPci:
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
	sw	$7,44($fp)
	lw	$5,32($fp)
	lui	$2,%hi($LC3)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(_Z12write_to_logPcz)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z12write_to_logPcz
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$6,44($fp)
	lw	$5,40($fp)
	lw	$4,36($fp)
	lw	$2,%call16(_Z8log_instPKcPPci)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z8log_instPKcPPci
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
	.end	_ZL16raise_inst_errorjPKcPPci
	.cfi_endproc
$LFE4:
	.size	_ZL16raise_inst_errorjPKcPPci, .-_ZL16raise_inst_errorjPKcPPci
	.align	2
$LFB5 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZL12skip_commentPc
	.type	_ZL12skip_commentPc, @function
_ZL12skip_commentPc:
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
	li	$5,35			# 0x23
	lw	$4,40($fp)
	lw	$2,%call16(strchr)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strchr
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,28($fp)
	lw	$2,28($fp)
	beq	$2,$0,$L6
	nop

	lw	$2,28($fp)
	sb	$0,0($2)
$L6:
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
	.end	_ZL12skip_commentPc
	.cfi_endproc
$LFE5:
	.size	_ZL12skip_commentPc, .-_ZL12skip_commentPc
	.align	2
$LFB6 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZL12add_if_labeljPcjP11SymbolTable
	.type	_ZL12add_if_labeljPcjP11SymbolTable, @function
_ZL12add_if_labeljPcjP11SymbolTable:
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
	lw	$4,44($fp)
	lw	$2,%call16(strlen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,28($fp)
	lw	$2,28($fp)
	addiu	$2,$2,-1
	lw	$3,44($fp)
	addu	$2,$3,$2
	lb	$3,0($2)
	li	$2,58			# 0x3a
	bne	$3,$2,$L8
	nop

	lw	$2,28($fp)
	addiu	$2,$2,-1
	lw	$3,44($fp)
	addu	$2,$3,$2
	sb	$0,0($2)
	lw	$4,44($fp)
	lw	$2,%call16(_Z14is_valid_labelPKc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z14is_valid_labelPKc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,$L9
	nop

	lw	$6,48($fp)
	lw	$5,44($fp)
	lw	$4,52($fp)
	lw	$2,%call16(_Z12add_to_tableP11SymbolTablePKcj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z12add_to_tableP11SymbolTablePKcj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	beq	$2,$0,$L10
	nop

	li	$2,1			# 0x1
	b	$L11
	nop

$L10:
	li	$2,-1			# 0xffffffffffffffff
	b	$L11
	nop

$L9:
	lw	$5,44($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	_ZL17raise_label_errorjPKc
	nop

	.option	pic2
	lw	$28,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	b	$L11
	nop

$L8:
	move	$2,$0
$L11:
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
	.end	_ZL12add_if_labeljPcjP11SymbolTable
	.cfi_endproc
$LFE6:
	.size	_ZL12add_if_labeljPcjP11SymbolTable, .-_ZL12add_if_labeljPcjP11SymbolTable
	.align	2
	.globl	_Z8pass_oneP8_IO_FILES0_P11SymbolTable
$LFB7 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z8pass_oneP8_IO_FILES0_P11SymbolTable
	.type	_Z8pass_oneP8_IO_FILES0_P11SymbolTable, @function
_Z8pass_oneP8_IO_FILES0_P11SymbolTable:
	.frame	$fp,1144,$31		# vars= 1112, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-1144
	.cfi_def_cfa_offset 1144
	sw	$31,1140($sp)
	sw	$fp,1136($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,32($fp)
	sw	$6,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,1132($fp)
	li	$2,1			# 0x1
	sw	$2,44($fp)
	sw	$0,48($fp)
	sw	$0,52($fp)
$L25:
	li	$3,1024			# 0x400
	addiu	$2,$fp,108
	lw	$6,36($fp)
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(fgets)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fgets
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,$L13
	nop

	sw	$0,56($fp)
	addiu	$2,$fp,108
	move	$4,$2
	.option	pic0
	jal	_ZL12skip_commentPc
	nop

	.option	pic2
	lw	$28,16($fp)
	sw	$0,60($fp)
	lui	$2,%hi(IGNORE_CHARS)
	lw	$3,%lo(IGNORE_CHARS)($2)
	addiu	$2,$fp,108
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(strtok)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtok
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,64($fp)
	addiu	$2,$fp,108
	lbu	$2,0($2)
	bne	$2,$0,$L14
	nop

	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
	b	$L24
	nop

$L14:
	lw	$2,64($fp)
	bne	$2,$0,$L16
	nop

	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
	b	$L24
	nop

$L16:
	lw	$2,48($fp)
	sll	$2,$2,2
	lw	$7,28($fp)
	move	$6,$2
	lw	$5,64($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	_ZL12add_if_labeljPcjP11SymbolTable
	nop

	.option	pic2
	lw	$28,16($fp)
	sw	$2,68($fp)
	lw	$2,68($fp)
	beq	$2,$0,$L17
	nop

	lui	$2,%hi(IGNORE_CHARS)
	lw	$2,%lo(IGNORE_CHARS)($2)
	move	$5,$2
	move	$4,$0
	lw	$2,%call16(strtok)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtok
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,64($fp)
	lw	$2,64($fp)
	lbu	$2,0($2)
	bne	$2,$0,$L25
	nop

	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
	b	$L24
	nop

$L17:
	addiu	$2,$fp,96
	lw	$5,64($fp)
	move	$4,$2
	lw	$2,%call16(strcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi(IGNORE_CHARS)
	lw	$2,%lo(IGNORE_CHARS)($2)
	move	$5,$2
	move	$4,$0
	lw	$2,%call16(strtok)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtok
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,64($fp)
$L21:
	lw	$2,64($fp)
	beq	$2,$0,$L19
	nop

	lw	$2,64($fp)
	sw	$2,72($fp)
	lw	$2,56($fp)
	sll	$2,$2,2
	addiu	$3,$fp,1136
	addu	$2,$3,$2
	lw	$3,72($fp)
	sw	$3,-1056($2)
	lw	$2,56($fp)
	addiu	$2,$2,1
	sw	$2,56($fp)
	lui	$2,%hi(IGNORE_CHARS)
	lw	$2,%lo(IGNORE_CHARS)($2)
	move	$5,$2
	move	$4,$0
	lw	$2,%call16(strtok)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtok
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,64($fp)
	lw	$2,56($fp)
	slt	$2,$2,4
	bne	$2,$0,$L21
	nop

	li	$2,1			# 0x1
	sw	$2,52($fp)
	li	$2,1			# 0x1
	sw	$2,60($fp)
	lw	$5,64($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	_ZL21raise_extra_arg_errorjPKc
	nop

	.option	pic2
	lw	$28,16($fp)
$L19:
	addiu	$3,$fp,80
	addiu	$2,$fp,96
	lw	$7,56($fp)
	move	$6,$3
	move	$5,$2
	lw	$4,32($fp)
	lw	$2,%call16(_Z14write_pass_oneP8_IO_FILEPKcPPci)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z14write_pass_oneP8_IO_FILEPKcPPci
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,76($fp)
	lw	$2,76($fp)
	bne	$2,$0,$L22
	nop

	li	$2,1			# 0x1
	sw	$2,52($fp)
$L22:
	lw	$2,76($fp)
	beq	$2,$0,$L23
	nop

	lw	$2,60($fp)
	bne	$2,$0,$L23
	nop

	lw	$3,48($fp)
	lw	$2,76($fp)
	addu	$2,$3,$2
	sw	$2,48($fp)
$L23:
	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
$L24:
	b	$L25
	nop

$L13:
	lw	$2,52($fp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,1132($fp)
	lw	$3,0($3)
	beq	$4,$3,$L27
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L27:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,1140($sp)
	lw	$fp,1136($sp)
	addiu	$sp,$sp,1144
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z8pass_oneP8_IO_FILES0_P11SymbolTable
	.cfi_endproc
$LFE7:
	.size	_Z8pass_oneP8_IO_FILES0_P11SymbolTable, .-_Z8pass_oneP8_IO_FILES0_P11SymbolTable
	.align	2
	.globl	_Z8pass_twoP8_IO_FILES0_P11SymbolTableS2_
$LFB8 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z8pass_twoP8_IO_FILES0_P11SymbolTableS2_
	.type	_Z8pass_twoP8_IO_FILES0_P11SymbolTableS2_, @function
_Z8pass_twoP8_IO_FILES0_P11SymbolTableS2_:
	.frame	$fp,1144,$31		# vars= 1096, regs= 2/0, args= 32, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-1144
	.cfi_def_cfa_offset 1144
	sw	$31,1140($sp)
	sw	$fp,1136($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	32
	sw	$4,52($fp)
	sw	$5,48($fp)
	sw	$6,44($fp)
	sw	$7,40($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,1132($fp)
	sw	$0,56($fp)
	sw	$0,60($fp)
$L33:
	li	$3,1024			# 0x400
	addiu	$2,$fp,108
	lw	$6,52($fp)
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(fgets)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fgets
1:	jalr	$25
	nop

	lw	$28,32($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,$L29
	nop

	lui	$2,%hi(IGNORE_CHARS)
	lw	$3,%lo(IGNORE_CHARS)($2)
	addiu	$2,$fp,108
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(strtok)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtok
1:	jalr	$25
	nop

	lw	$28,32($fp)
	sw	$2,64($fp)
	sw	$0,68($fp)
	addiu	$2,$fp,96
	lw	$5,64($fp)
	move	$4,$2
	lw	$2,%call16(strcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcpy
1:	jalr	$25
	nop

	lw	$28,32($fp)
	lui	$2,%hi(IGNORE_CHARS)
	lw	$2,%lo(IGNORE_CHARS)($2)
	move	$5,$2
	move	$4,$0
	lw	$2,%call16(strtok)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtok
1:	jalr	$25
	nop

	lw	$28,32($fp)
	sw	$2,64($fp)
$L31:
	lw	$2,64($fp)
	beq	$2,$0,$L30
	nop

	lw	$2,64($fp)
	sw	$2,72($fp)
	lw	$2,68($fp)
	sll	$2,$2,2
	addiu	$3,$fp,1136
	addu	$2,$3,$2
	lw	$3,72($fp)
	sw	$3,-1052($2)
	lw	$2,68($fp)
	addiu	$2,$2,1
	sw	$2,68($fp)
	lui	$2,%hi(IGNORE_CHARS)
	lw	$2,%lo(IGNORE_CHARS)($2)
	move	$5,$2
	move	$4,$0
	lw	$2,%call16(strtok)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtok
1:	jalr	$25
	nop

	lw	$28,32($fp)
	sw	$2,64($fp)
	b	$L31
	nop

$L30:
	lw	$2,60($fp)
	sll	$2,$2,2
	sw	$2,76($fp)
	lw	$5,68($fp)
	addiu	$4,$fp,84
	addiu	$3,$fp,96
	lw	$2,40($fp)
	sw	$2,24($sp)
	lw	$2,44($fp)
	sw	$2,20($sp)
	lw	$2,76($fp)
	sw	$2,16($sp)
	move	$7,$5
	move	$6,$4
	move	$5,$3
	lw	$4,48($fp)
	lw	$2,%call16(_Z14translate_instP8_IO_FILEPKcPPcjjP11SymbolTableS6_)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z14translate_instP8_IO_FILEPKcPPcjjP11SymbolTableS6_
1:	jalr	$25
	nop

	lw	$28,32($fp)
	sw	$2,80($fp)
	lw	$3,80($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L32
	nop

	lw	$2,60($fp)
	addiu	$2,$2,1
	addiu	$4,$fp,84
	addiu	$3,$fp,96
	lw	$7,68($fp)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	_ZL16raise_inst_errorjPKcPPci
	nop

	.option	pic2
	lw	$28,32($fp)
	li	$2,1			# 0x1
	sw	$2,56($fp)
$L32:
	lw	$2,60($fp)
	addiu	$2,$2,1
	sw	$2,60($fp)
	b	$L33
	nop

$L29:
	lw	$2,56($fp)
	beq	$2,$0,$L34
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L36
	nop

$L34:
	move	$2,$0
$L36:
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,1132($fp)
	lw	$3,0($3)
	beq	$4,$3,$L37
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L37:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,1140($sp)
	lw	$fp,1136($sp)
	addiu	$sp,$sp,1144
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z8pass_twoP8_IO_FILES0_P11SymbolTableS2_
	.cfi_endproc
$LFE8:
	.size	_Z8pass_twoP8_IO_FILES0_P11SymbolTableS2_, .-_Z8pass_twoP8_IO_FILES0_P11SymbolTableS2_
	.rdata
	.align	2
$LC4:
	.ascii	"r\000"
	.align	2
$LC5:
	.ascii	"Error: unable to open input file: %s\012\000"
	.align	2
$LC6:
	.ascii	"w\000"
	.align	2
$LC7:
	.ascii	"Error: unable to open output file: %s\012\000"
	.text
	.align	2
$LFB9 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZL10open_filesPP8_IO_FILES1_PKcS3_
	.type	_ZL10open_filesPP8_IO_FILES1_PKcS3_, @function
_ZL10open_filesPP8_IO_FILES1_PKcS3_:
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
	sw	$7,44($fp)
	lui	$2,%hi($LC4)
	addiu	$5,$2,%lo($LC4)
	lw	$4,40($fp)
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	sw	$3,0($2)
	lw	$2,32($fp)
	lw	$2,0($2)
	bne	$2,$0,$L39
	nop

	lw	$5,40($fp)
	lui	$2,%hi($LC5)
	addiu	$4,$2,%lo($LC5)
	lw	$2,%call16(_Z12write_to_logPcz)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z12write_to_logPcz
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	b	$L40
	nop

$L39:
	lui	$2,%hi($LC6)
	addiu	$5,$2,%lo($LC6)
	lw	$4,44($fp)
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,36($fp)
	sw	$3,0($2)
	lw	$2,36($fp)
	lw	$2,0($2)
	bne	$2,$0,$L41
	nop

	lw	$5,44($fp)
	lui	$2,%hi($LC7)
	addiu	$4,$2,%lo($LC7)
	lw	$2,%call16(_Z12write_to_logPcz)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z12write_to_logPcz
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,32($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	b	$L40
	nop

$L41:
	move	$2,$0
$L40:
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
	.end	_ZL10open_filesPP8_IO_FILES1_PKcS3_
	.cfi_endproc
$LFE9:
	.size	_ZL10open_filesPP8_IO_FILES1_PKcS3_, .-_ZL10open_filesPP8_IO_FILES1_PKcS3_
	.align	2
$LFB10 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZL11close_filesP8_IO_FILES0_
	.type	_ZL11close_filesP8_IO_FILES0_, @function
_ZL11close_filesP8_IO_FILES0_:
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
	lw	$4,32($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
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
	.end	_ZL11close_filesP8_IO_FILES0_
	.cfi_endproc
$LFE10:
	.size	_ZL11close_filesP8_IO_FILES0_, .-_ZL11close_filesP8_IO_FILES0_
	.rdata
	.align	2
$LC8:
	.ascii	".text\012\000"
	.text
	.align	2
	.globl	_Z8assemblePKcS0_S0_
$LFB11 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z8assemblePKcS0_S0_
	.type	_Z8assemblePKcS0_S0_, @function
_Z8assemblePKcS0_S0_:
	.frame	$fp,72,$31		# vars= 40, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-72
	.cfi_def_cfa_offset 72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,32($fp)
	sw	$6,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,60($fp)
	sw	$0,48($fp)
	lw	$2,%got(SYMTBL_UNIQUE_NAME)($28)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z12create_tablei)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z12create_tablei
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,52($fp)
	lw	$2,%got(SYMTBL_NON_UNIQUE)($28)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_Z12create_tablei)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z12create_tablei
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,56($fp)
	lw	$2,36($fp)
	beq	$2,$0,$L44
	nop

	addiu	$3,$fp,44
	addiu	$2,$fp,40
	lw	$7,32($fp)
	lw	$6,36($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	_ZL10open_filesPP8_IO_FILES1_PKcS3_
	nop

	.option	pic2
	lw	$28,16($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,$L45
	nop

	lw	$4,52($fp)
	lw	$2,%call16(_Z10free_tableP11SymbolTable)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z10free_tableP11SymbolTable
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,56($fp)
	lw	$2,%call16(_Z10free_tableP11SymbolTable)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z10free_tableP11SymbolTable
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L45:
	lw	$2,40($fp)
	lw	$3,44($fp)
	lw	$6,52($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	_Z8pass_oneP8_IO_FILES0_P11SymbolTable
	nop

	.option	pic2
	lw	$28,16($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,$L46
	nop

	li	$2,1			# 0x1
	sw	$2,48($fp)
$L46:
	lw	$2,40($fp)
	lw	$3,44($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	_ZL11close_filesP8_IO_FILES0_
	nop

	.option	pic2
	lw	$28,16($fp)
$L44:
	lw	$2,28($fp)
	beq	$2,$0,$L47
	nop

	addiu	$3,$fp,44
	addiu	$2,$fp,40
	lw	$7,28($fp)
	lw	$6,32($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	_ZL10open_filesPP8_IO_FILES1_PKcS3_
	nop

	.option	pic2
	lw	$28,16($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,$L48
	nop

	lw	$4,52($fp)
	lw	$2,%call16(_Z10free_tableP11SymbolTable)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z10free_tableP11SymbolTable
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,56($fp)
	lw	$2,%call16(_Z10free_tableP11SymbolTable)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z10free_tableP11SymbolTable
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L48:
	lw	$2,44($fp)
	move	$7,$2
	li	$6,6			# 0x6
	li	$5,1			# 0x1
	lui	$2,%hi($LC8)
	addiu	$4,$2,%lo($LC8)
	lw	$2,%call16(fwrite)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fwrite
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,40($fp)
	lw	$3,44($fp)
	lw	$7,56($fp)
	lw	$6,52($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	_Z8pass_twoP8_IO_FILES0_P11SymbolTableS2_
	nop

	.option	pic2
	lw	$28,16($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,$L49
	nop

	li	$2,1			# 0x1
	sw	$2,48($fp)
$L49:
	lw	$2,40($fp)
	lw	$3,44($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	_ZL11close_filesP8_IO_FILES0_
	nop

	.option	pic2
	lw	$28,16($fp)
$L47:
	lw	$4,52($fp)
	lw	$2,%call16(_Z10free_tableP11SymbolTable)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z10free_tableP11SymbolTable
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,56($fp)
	lw	$2,%call16(_Z10free_tableP11SymbolTable)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Z10free_tableP11SymbolTable
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,48($fp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,60($fp)
	lw	$3,0($3)
	beq	$4,$3,$L51
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L51:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,68($sp)
	lw	$fp,64($sp)
	addiu	$sp,$sp,72
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z8assemblePKcS0_S0_
	.cfi_endproc
$LFE11:
	.size	_Z8assemblePKcS0_S0_, .-_Z8assemblePKcS0_S0_
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
