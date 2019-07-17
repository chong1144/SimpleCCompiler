## SimpleCCompiler
<p align='right'>Authored by SenW</p>

### An implement for a super subset of the C Compiler to mips instructions

#### Build

```bash
make bin/SimpleCCompiler
```

#### Usage

```bash
./SimpleCCompiler <target.c> <target.s> <target.int> <target.o>
```

> explain:
> 1. target.c: the c source code to be compiled
> 2. target.s: the intermediate code, mips instructions(there're some instructions my cpu not supported, but easy to debug and understand)
> 3. target.int: the mips instructions that are expanded(all of the instructions can be execuated by my cpu)
> 4. target.o: the machine code of the source code

#### Support C Grammars

> TODO

#### Support MIPS instructions

> TODO

#### Acknowledge

Thanks to [c-to-mips-compiler](https://github.com/Jiantastic/c-to-mips-compiler) and [Assembler](https://github.com/MicBrain/Assembler)