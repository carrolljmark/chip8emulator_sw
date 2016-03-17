
// Author: Mark Carroll
// Date created: 3/16/2016
// Chip 8 header file.

#include <stdio.h>
#include <math.h>

#pragma once

// Initialize the emulator.
void initialize();

// Load the specified game into memory.
void loadGame();

// Perform the emulation cycle.
// Fetch, decode, and execute opcodes.
void emulateCycle();

// todo: add function pointers for decoding each opcode.











