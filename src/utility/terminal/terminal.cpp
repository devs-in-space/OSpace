//
// Created by kyle on 02/01/2020.
//

#include "terminal.h"
#include "../../vga/vga.h"
#include "../../lib/str_lib.h"

uint8_t terminal::VGA_WIDTH = 80;
uint8_t terminal::VGA_HEIGHT = 24;

void terminal::init() {
    terminal_row = 0;
    terminal_column = 0;
    terminal_color = vga::make_color(vga::BLUE, vga::BLACK);
    terminal_buffer = (uint16_t *) 0xB8000;
    for (size_t y = 0; y < terminal::VGA_HEIGHT; y++) {
        for (size_t x = 0; x < terminal::VGA_WIDTH; x++) {
            const size_t index = y * terminal::VGA_WIDTH + x;
            terminal_buffer[index] = vga::make_vga_entry(' ', terminal_color);
        }
    }
}

void terminal::set_color(uint8_t color) {
    terminal_color = color;
}

void terminal::put_entry_at(char c, uint8_t color, size_t x, size_t y) {
    const size_t index = y * terminal::VGA_WIDTH + x;
    terminal_buffer[index] = vga::make_vga_entry(c, color);
}

void terminal::put_char(char c) {
    bool should_put = true;
    if (c == '\n') {
        terminal_column = 0;
        lib::vector<uint16_t> new_row = lib::vector<uint16_t>();
        terminal_lines.push_back(new_row);
        ++terminal_row;
        should_put = false;
    }
    if (should_put) {
        put_entry_at(c, terminal_color, terminal_column, terminal_row);
        if (++terminal_column == terminal::VGA_WIDTH) {
            terminal_column = 0;
            if (++terminal_row == terminal::VGA_HEIGHT) {
                reset();
            }
        }
    }
}

void terminal::write_string(const char *str) {
    size_t datalen = str_len(str);
    for (size_t i = 0; i < datalen; i++) {
        put_char(str[i]);
    }
}

void terminal::reset() {
    terminal_buffer = (uint16_t *)0xB8000;
}
