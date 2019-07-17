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
// #include "c_bison.tab.c"


static void print_usage_and_exit() {
    printf("Usage:\n");
    printf("./SimpleCCompiler < <target.c> <target.s> <target.int> <target.out>\n");
    // printf("  Runs both passes: assembler <input file> <intermediate file> <output file>\n");
    // printf("  Run pass #1:      assembler -p1 <input file> <intermediate file>\n");
    // printf("  Run pass #2:      assembler -p2 <intermediate file> <output file>\n");
    // printf("Append -log <file name> after any option to save log files to a text file.\n");
    exit(0);
}

extern int Parse1(std::ofstream &outFile);


int main(int argc, char **argv) {
    std::cout << argc << std::endl;
    for(int i = 0; i < argc; ++i)
    {
        std::cout << argv[i] << std::endl;
    }

    if (argc != 4) {
        print_usage_and_exit();
    }

    std::ofstream outFile;
    outFile.open(argv[1], std::ios::in | std::ios::out | std::ios::binary);
    Parse1(outFile);
    outFile.close();
   
    char *input, *inter, *output;

    input = argv[1];
    inter = argv[2];
    output = argv[3];

    int err = assemble(input, inter, output);

    if (err) {
        write_to_log("One or more errors encountered during Compile operation.\n");
    } else {
        write_to_log("Compile operation completed successfully.\n");
    }

    if (is_log_file_set()) {
        printf("Results saved to %s\n", argv[3]);
    }

    return err;
}
