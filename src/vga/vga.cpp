//
// Created by kyle on 02/01/2020.
//

#include "vga.h"

uint16_t vga::make_vga_entry(char c, uint8_t color) {
    uint16_t c16 = c;
    uint16_t color16 = color;
    return c16 | color16 << 8;
}

uint8_t vga::make_color(vga::vga_color fg, vga::vga_color bg) {
    return fg | bg << 4;
}
