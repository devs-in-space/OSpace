//
// Created by kyle on 02/01/2020.
//
#ifndef OSPACE_STR_LIB_H
#define OSPACE_STR_LIB_H

#include <stddef.h>

size_t str_len(const char * str) {
    size_t ret = 0;
    while (str[ret] != 0) {
        ret++;
    }
    return ret;
}

#endif //OSPACE_STR_LIB_H
