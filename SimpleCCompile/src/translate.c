#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "tables.h"
#include "translate_utils.h"
#include "translate.h"

/* Writes instructions during the assembler's first pass to OUTPUT.
   Translates the li and blt pseudoinstructions without any side effects.
   NAME is the name of the instruction, ARGS is an array of the arguments, and
   NUM_ARGS specifies the number of items in ARGS.
   Error checking for regular instructions are done in pass two. However, for
   pseudoinstructions, it makes sure that ARGS contains the correct number
   of arguments. This does not check whether the registers / label are 
   valid, since that will be checked in part two.
   Also for li:
    - the number is representable by 32 bits.
    - if the immediate can fit in the imm field of an addiu instruction, then
      li expands into a single addiu instruction. Otherwise, it expand into 
        a lui-ori pair.
   And for blt:
    - this expansion uses the fewest number of instructions possible.
   MARS has slightly different translation rules for li, and it allows numbers
   larger than the largest 32 bit number to be loaded with li. You should follow
   the above rules if MARS behaves differently.
   Returns the number of instructions written (so 0 if there were any errors).
 */
unsigned write_pass_one(FILE* output, const char* name, char** args, int num_args) {
    if (strcmp(name, "li") == 0) {
        if(num_args != 2) {
          return 0;
        }
        long int immediate;
        int result = translate_num(&immediate, args[1], -2147483648, 4294967295);
        if (result == -1)
          return 0;
        if ((immediate <= 65535 && immediate >= 0) || 
          (immediate >= -32768 && immediate <= 32767)) {
          char* instr = "addiu";
          char* zero_reg = "$zero";
          fprintf(output, "%s %s %s %ld\n", instr, args[0], zero_reg, immediate);
        } else {
          char* loadUpper = "lui";
          char* loadLower = "ori";
          long int topBits = immediate >> 16; 
          fprintf(output, "%s %s %ld\n",loadUpper, args[0], topBits);
          long int lowBits = immediate & 0xffff;
          fprintf(output, "%s %s %s %ld\n", loadLower, args[0], args[0], lowBits);
        }
        return 2;
    } 
    else if (strcmp(name, "blt") == 0) {
        if(num_args != 3) {
          return 0;
        }
        fprintf(output, "%s %s %s %s\n", "slt","$at", args[0], args[1]);
        fprintf(output, "%s %s %s %s\n","bne", "$at", "$zero", args[2]);
        return 2;
    }
    else if (strcmp(name, "b") == 0) {
        if(num_args != 1) {
          return 0;
        }
        fprintf(output, "%s %s %s %s\n", "beq", "$zero", "$zero", args[0]);
        return 2;
    } 
    else if (strcmp(name, "move") == 0) {
        if(num_args != 2) {
          return 0;
        }
        fprintf(output, "%s %s %s %s\n", "or", args[0], args[1], "$zero");
        return 2;
    }
    else if (strcmp(name, "nop") == 0) {
        if(num_args != 0) {
          return 0;
        }
        fprintf(output, "%s %s %s %s\n", "sll", "$zero", "$zero", "0");
        return 2;
    }
    else {
        write_inst_string(output, name, args, num_args);
        return 1;
    }

}

/* Writes the instruction in hexadecimal format to OUTPUT during pass #2.
   NAME is the name of the instruction, ARGS is an array of the arguments, and
   NUM_ARGS specifies the number of items in ARGS. 
   The symbol table (SYMTBL) is given for any symbols that need to be resolved
   at this step. If a symbol should be relocated, it should be added to the
   relocation table (RELTBL), and the fields for that symbol should be set to
   all zeros. 
   This performs error checking on all instructions and make sure that their
   arguments are valid. If an instruction is invalid, you should not write 
   anything to OUTPUT but simply return -1. MARS may be a useful resource for
   this step.
   Returns 0 on success and -1 on error. 
 */
int translate_inst(FILE* output, const char* name, char** args, size_t num_args, uint32_t addr,
    SymbolTable* symtbl, SymbolTable* reltbl) {
    if (strcmp(name, "addu") == 0)       return write_rtype (0x21, output, args, num_args);
    else if (strcmp(name, "subu") == 0)  return write_rtype(0x23, output, args, num_args);
    else if (strcmp(name, "sub") == 0)  return write_rtype(0x22, output, args, num_args);
    else if (strcmp(name, "and") == 0)  return write_rtype(0x24, output, args, num_args);
    else if (strcmp(name, "xor") == 0)  return write_rtype(0x26, output, args, num_args);
    else if (strcmp(name, "or") == 0)    return write_rtype (0x25, output, args, num_args);
    else if (strcmp(name, "slt") == 0)   return write_rtype (0x2a, output, args, num_args);
    else if (strcmp(name, "sltu") == 0)  return write_rtype (0x2b, output, args, num_args);
    else if (strcmp(name, "sll") == 0)   return write_shift (0x00, output, args, num_args);
    else if (strcmp(name, "sra") == 0)  return write_shift(0x03, output, args, num_args);
    else if (strcmp(name, "jr") == 0)     return write_jr (0x08, output, args, num_args);
    else if (strcmp(name, "addiu") == 0)  return write_ritype (0x9, output, args, num_args);
    else if (strcmp(name, "ori") == 0)    return write_ritype (0xd, output, args, num_args);
    else if (strcmp(name, "andi") == 0) return write_ritype(0xc, output, args, num_args);
    else if (strcmp(name, "xori") == 0) return write_ritype(0xe, output, args, num_args);
    else if (strcmp(name, "lui") == 0)    return write_lui (0xf, output, args, num_args);
    else if (strcmp(name, "lb") == 0)    return write_mem (0x20, output, args, num_args);
    else if (strcmp(name, "lbu") == 0)   return write_mem (0x24, output, args, num_args);
    else if (strcmp(name, "lw") == 0)    return write_mem (0x23, output, args, num_args);
    else if (strcmp(name, "sb") == 0)    return write_mem (0x28, output, args, num_args);
    else if (strcmp(name, "sw") == 0)    return write_mem (0x2b, output, args, num_args);
    else if (strcmp(name, "beq") == 0)    return write_branch(0x4, output, args, num_args, addr, symtbl);
    else if (strcmp(name, "bne") == 0)    return write_branch(0x5, output, args, num_args, addr, symtbl);
    else if (strcmp(name, "j") == 0)    return write_jump(0x2, output, args, num_args, addr, reltbl);
    else if (strcmp(name, "jal") == 0)  return write_jump(0x03, output, args, num_args, addr, reltbl);
    else if (strcmp(name, "mflo") == 0) return write_fetch(0x12, output, args, num_args);
    else if (strcmp(name, "mfhi") == 0) return write_fetch(0x10, output, args, num_args);
    else if (strcmp(name, "div") == 0) return write_div(0x1a, output, args, num_args);
    else if (strcmp(name, "mul") == 0) return write_mul(0x02, output, args, num_args);
    else if (strcmp(name, "mtlo") == 0) return 0xffff;
    else if (strcmp(name, "mthi") == 0) return 0xffff;
    else                                 return -1;
}
/* A helper function for writing most R-type instructions. This uses
   translate_reg() to parse registers and write_inst_hex() to write to 
   OUTPUT. Both are defined in translate_utils.h.
 */
int write_rtype(uint8_t funct, FILE* output, char** args, size_t num_args) {
  if (num_args != 3)
    return -1;
  int rd = translate_reg(args[0]);
  int rs = translate_reg(args[1]);
  int rt = translate_reg(args[2]);
  if (rd == -1 || rs == -1 || rt == -1)
    return -1;
  uint32_t instruction = (0<<26) | (rs<<21) | (rt<<16) | (rd<<11) | (0 << 6) | funct;
  write_inst_hex(output, instruction);
  return 0;
}

/* A helper function for writing shift instructions. You should use 
   translate_num() to parse numerical arguments. translate_num() is defined
   in translate_utils.h.
 */
int write_shift(uint8_t funct, FILE* output, char** args, size_t num_args) {
  if (num_args != 3)
    return -1;
  long int shamt;
  int rd = translate_reg(args[0]);
  int rt = translate_reg(args[1]);
  int err = translate_num(&shamt, args[2], 0, 31);
  if (rd == -1 || rt == -1 || err == -1)
    return -1;
  uint32_t instruction = (0 << 26) | (0 << 21) | (rt << 16) | (rd << 11) | (shamt << 6) | funct;
  write_inst_hex(output, instruction);
  return 0;
}

/* A helper function for writing jump register instructions. */
int write_jr(uint8_t funct, FILE* output, char** args, size_t num_args) {
  if (num_args != 1)
    return -1;
  int rs = translate_reg(args[0]);
  if (rs == -1)
    return -1;
  uint32_t instruction = (0<<26) | (rs<<21) | (0<<16) | (0<<11) | (0 << 6) | funct;
  write_inst_hex(output, instruction);
  return 0;
}

/* A helper function for writing add immediate unsigned
  register instructions.
*/
int write_ritype(uint8_t opcode, FILE* output, char** args, size_t num_args) {
  if (num_args != 3) {
    return -1;
  }
  int rs = translate_reg(args[0]);
  int rt = translate_reg(args[1]);
  if (rs == -1 || rt == -1)
    return -1;
  long int immediate;
  int result = translate_num(&immediate, args[2], -32768, 32767);
  if (result == -1) 
    return -1;
  uint32_t instruction;
  if (immediate < 0 ) {
    immediate = immediate & 0xFFFF;
    instruction = (opcode<<26) | (rt<<21) | (rs<<16) | immediate;
  }
  else {
    instruction = (opcode<<26) | (rt<<21) | (rs<<16) | immediate;
  }
  write_inst_hex(output, instruction);
  return 0;
}

// /* A helper function for writing Or Immediate register instructions. */
// int write_ori(uint8_t opcode, FILE* output, char** args, size_t num_args) {
//   if (num_args != 3) 
//     return -1;
//   int rt = translate_reg(args[0]);
//   int rs = translate_reg(args[1]);
//   if (rs == -1 || rt == -1)
//     return -1;
//   long int immediate;
//   int result = translate_num(&immediate, args[2], 0, 65535);
//   if (result == -1) 
//     return -1;
//   uint32_t instruction = (opcode<<26) | (rs<<21) | (rt<<16) | immediate;
//   write_inst_hex(output, instruction);
//   return 0;
// }

/* A helper function for writing Or Immediate register instructions. */
int write_lui(uint8_t opcode, FILE* output, char** args, size_t num_args) {
  if (num_args != 2)
    return -1;
  int rt = translate_reg(args[0]);
  if (rt == -1)
    return -1;
  long int immediate;
  int result = translate_num(&immediate, args[1], -2147483648, 2147483647);
  if (result == -1) 
    return -1;
  uint32_t instruction = (opcode<<26) | (0<<21) | (rt<<16) | immediate;
  write_inst_hex(output, instruction);
  return 0;
}

/* A helper function for fetch some memory data. */
int write_mem(uint8_t opcode, FILE* output, char** args, size_t num_args) {
  if (num_args != 3) {
    return -1;
  }
  int rs = translate_reg(args[0]);
  int rt = translate_reg(args[2]);
  if (rt == -1 || rs == -1)
    return -1;
  long int immediate;
  int result = translate_num(&immediate, args[1], -32768, 32767);
  if (result == -1) 
    return -1;
  uint32_t instruction; 
  if (immediate < 0 ) {
    immediate = immediate & 0xFFFF;
    instruction = (opcode<<26) | (rt<<21) | (rs<<16) | immediate;
  } else {
    instruction = (opcode<<26) | (rt<<21) | (rs<<16) | immediate;
  }
  write_inst_hex(output, instruction);
  return 0;
}

/* A helper function for fetch the hi and lo registers. */
int write_fetch(uint8_t opcode, FILE * output, char ** args, size_t num_args) {
  if (num_args != 1) {
    return -1;
  }
  int rd = translate_reg(args[0]);
  if (rd == -1)
    return -1;
  uint32_t instruction; 
  instruction = (0<<26) | (0<<21) | (0<<16) | (rd<<11) | (0<<6) | opcode;
  write_inst_hex(output, instruction);
  return 0;
}

/* A helper function for writing Branch on Equal and Branch onNot Equal
  register instruction. 
*/
int write_branch(uint8_t opcode, FILE* output, char** args, size_t num_args, 
    uint32_t addr, SymbolTable* symtbl) {
  if (num_args != 3)
    return -1;
  int rs = translate_reg(args[0]);
  int rt = translate_reg(args[1]);
  if (rt == -1 || rs == -1)
    return -1;
  char* name = args[2];
  int64_t checker = get_addr_for_symbol(symtbl, name);
  if (checker == -1) {
    return -1;
  }
  uint32_t exact_address = checker - addr - 4;
  if (exact_address % 4 != 0)
    return -1;
  else
    exact_address = exact_address / 4;
  
  int final_distance = exact_address & 0xFFFF;
  uint32_t instruction = (opcode<<26) | (rs<<21) | (rt<<16) | final_distance;
  write_inst_hex(output, instruction);
  return 0;
}

/* A helper function for jumping instructions
*/
int write_jump(uint8_t opcode, FILE* output, char** args, size_t num_args, 
    uint32_t addr, SymbolTable* reltbl) {
  if (num_args != 1) {
    return -1;
  }
  add_to_table(reltbl, args[0], addr);
  uint32_t instruction = (opcode<<26);
  write_inst_hex(output, instruction);

  return 0;
}

/* A helper function for mul instruction
*/
int write_mul(uint8_t opcode, FILE* output, char** args, size_t num_args) {
  if (num_args != 3) {
    return -1;
  }
  int rd = translate_reg(args[0]);
  int rs = translate_reg(args[1]);
  int rt = translate_reg(args[2]);
  if (rd == -1 || rs == -1 || rt == -1)
    return -1;
  uint32_t instruction; 
  instruction = (0x1c<<26) | (rs<<21) | (rt<<16) | (rd<<11) | (0<<6) | opcode;
  write_inst_hex(output, instruction);
  return 0;
}

/* A helper function for div instruction
*/
int write_div(uint8_t opcode, FILE* output, char** args, size_t num_args) {
  if (num_args != 3) {
    return -1;
  }
  int rs = translate_reg(args[0]);
  int rt = translate_reg(args[1]);
  if (rs == -1 || rt == -1)
    return -1;
  uint32_t instruction; 
  instruction = (0<<26) | (rs<<21) | (rt<<16) | (0<<11) | (0<<6) | opcode;
  write_inst_hex(output, instruction);
  return 0;
}
