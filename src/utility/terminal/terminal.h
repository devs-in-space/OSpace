//
// Created by kyle on 02/01/2020.
//

#ifndef OSPACE_TERMINAL_H
#define OSPACE_TERMINAL_H


#include <stdint.h>
#include <stddef.h>
#include "../../lib/collections/vector.h"

class terminal {
public:
    void init();
    void set_color(uint8_t color);
    void put_entry_at(char c, uint8_t color, size_t x, size_t y);
    void put_char(char c);
    void write_string(const char* str);
    void reset();

private:
    size_t terminal_row;
    size_t terminal_column;
    uint8_t terminal_color;
    uint16_t* terminal_buffer;
    lib::vector<lib::vector<uint16_t>> terminal_lines;

    static uint8_t VGA_WIDTH;
    static uint8_t VGA_HEIGHT;
};


#endif //OSPACE_TERMINAL_H
