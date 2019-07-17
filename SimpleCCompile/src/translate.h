#ifndef TRANSLATE_H
#define TRANSLATE_H

#include <stdint.h>

unsigned write_pass_one(FILE* output, const char* name, char** args, int num_args);

int translate_inst(FILE* output, const char* name, char** args, size_t num_args, 
    uint32_t addr, SymbolTable* symtbl, SymbolTable* reltbl);

int write_rtype(uint8_t funct, FILE* output, char** args, size_t num_args);

int write_shift(uint8_t funct, FILE* output, char** args, size_t num_args);

int write_jr(uint8_t funct, FILE* output, char** args, size_t num_args);

int write_ritype(uint8_t opcode, FILE* output, char** args, size_t num_args);

int write_fetch(uint8_t opcode, FILE * output, char ** args, size_t num_args);

int write_div(uint8_t opcode, FILE* output, char** args, size_t num_args);

int write_mul(uint8_t opcode, FILE* output, char** args, size_t num_args);

// int write_addiu(uint8_t opcode, FILE* output, char** args, size_t num_args);

// int write_ori(uint8_t opcode, FILE* output, char** args, size_t num_args);

int write_lui(uint8_t opcode, FILE* output, char** args, size_t num_args);

int write_mem(uint8_t opcode, FILE* output, char** args, size_t num_args);

int write_branch(uint8_t opcode, FILE* output, char** args, size_t num_args, 
    uint32_t addr, SymbolTable* symtbl);

int write_jump(uint8_t opcode, FILE* output, char** args, size_t num_args, 
    uint32_t addr, SymbolTable* reltbl);

#endif
