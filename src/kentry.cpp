#include "vga/vga.h"
#include "utility/terminal/terminal.h"
#include <stddef.h>
extern "C" void kernel_main(void) {
    terminal term = terminal();
    term.init();

    for (;;){
        term.write_string("lessss gooooo\n");
        term.write_string("lessss gooooo\n");
	}
}