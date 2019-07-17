#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <fstream>
#include <iostream>

#include "utils.h"
#include "tables.h"
#include "translate_utils.h"
#include "translate.h"
#include "assembler.h"


static void print_usage_and_exit() {
    printf("Usage:\n");
    printf("./SimpleCCompiler <target.c> <target.s> <target.int> <target.out>\n");
    exit(0);
}

extern int Parse1();


int main(int argc, char **argv) {
    // for debugger
    // std::cout << argc << std::endl;
    // for(int i = 0; i < argc; ++i)
    // {
    //     std::cout << argv[i] << std::endl;
    // }

    if (argc != 5) {
        print_usage_and_exit();
    }

    /* 
    the first parse : convert c to mips(maybe there're some instructions doesn't support)
    */
    freopen(argv[2], "w", stdout);
    freopen(argv[1], "r", stdin);

    Parse1();
   
   /* 
   the second parse : convert mips to machine code
   */
    char *input, *inter, *output;

    input = argv[2];
    inter = argv[3];
    output = argv[4];

    int err = assemble(input, inter, output);

    if (err) {
        write_to_log("One or more errors encountered during Compile operation.\n");
    } else {
        write_to_log("Compile operation completed successfully.\n");
    }

    if (is_log_file_set()) {
        printf("Results saved to %s\n", argv[4]);
    }

    return err;
}
