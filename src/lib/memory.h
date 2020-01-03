//
// Created by kyle on 02/01/2020.
//
#ifndef OSPACE_MEMORY_H
#define OSPACE_MEMORY_H
#include <stddef.h>

void copy_memory(void* destination, void* source, size_t n);
void* malloc(size_t size);
#endif //OSPACE_MEMORY_H
