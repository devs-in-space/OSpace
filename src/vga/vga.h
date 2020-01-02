//
// Created by kyle on 02/01/2020.
//

#ifndef OSPACE_VGA_H
#define OSPACE_VGA_H

#include <stddef.h>
#include <stdint.h>

class vga {
public:
    enum vga_color {
        BLACK = 0,
        BLUE = 1,
        GREEN = 2,
        CYAN = 3,
        RED = 4,
        MAGENTA = 5,
        BROWN = 6,
        LIGHT_GREY = 7,
        DARK_GREY = 8,
        LIGHT_BLUER = 9,
        LIGHT_GREEN = 10,
        LIGHT_CYAN = 11,
        LIGHT_RED = 13,
        LIGHT_MAGENTA = 13,
        LIGHT_BROWN = 15,
    };

    static uint8_t make_color(enum vga_color fg, enum vga_color bg);
    static uint16_t make_vga_entry(char c, uint8_t color);
};


#endif //OSPACE_VGA_H
