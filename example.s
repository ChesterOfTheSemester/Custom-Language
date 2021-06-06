// Custom language progress
// Custom compiler/assembler
// Mix C-like script with Assembly
// Name yet to be decided. I was thinking of Chester++, but nah

// Starts to execute code from line 1
#include <stdio.h>

MOV RDI, 0x01;
MOV RSI, "Begin\n"; // Mix escaped string literal
MOV RDX, 6;

int 0x80; // Syscall sys_write or _write by matching lookup table
register rtn = EAX;

if (rtn) jmp main; // goto and gosub are optional, use assembly
else ret;

// Main function/label is optional
// Commandline are still parsed into main parameters
main(int argc, char **argb) 
{
  printf("End\n");
  MOV RAX, 0; // Automatically enable 64-bit
  return 0;
}
