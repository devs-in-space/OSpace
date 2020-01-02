//
// Created by kyle on 02/01/2020.
//

#include "memory.h"

void copy_memory(void* destination, void* source, size_t n) {
    char* c_source = (char*)source;
    char* c_destination = (char*)destination;

    for(int i = 0; i< n; i++) {
        c_destination[i] = c_source[i];
    }
}
