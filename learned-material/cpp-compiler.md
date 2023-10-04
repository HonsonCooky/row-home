# C++ Compiler

In general, the C++ compiler is a fairly standard Source Code (SC) to Machine Code (MC) process. More often than not,
errors I struggle to debug are made 10 times more difficult because I don't understand the compiler and the process
behind my code talking to the machine. Learning the basics in this area will aid in understanding my problems later on.

For the following examples, we will be using this source code:

```cpp
#include <iostream>

int main(int argc, char *argv[]) {
  std::cout << "Hello World" << std::endl;
  return 0;
}
```

## 1) Preprocessing

Input: C++ Source Code (.cpp)
Output: Preproccessed File (.i)

Preprocessing prepares the SC for compilation by expanding any shorthands the developer has used. This starts with
hashtag statements (`#include`, `#define`, `#if`), where the directive is replaced with it's corresponding SC. Markers
are use to annotate where code has come from for the compiler.

`g++ -E .\src\main.cpp -o .\src\main.i`

```cpp
# 0 ".\\src\\main-pp1.cpp"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 ".\\src\\main-pp1.cpp"
# 0 ".\\src\\main-pp.cpp"
# 0 "<built-in>"
# 0 "<command-line>"

// ...

# 3 ".\\src\\main.cpp"
int main(int argc, char *argv[]) {
  std::cout << "Hello World" << std::endl;
  return 0;
} // LINE NO: 35675
```

The preprocessed file is still C++ code, but all "preprocessor directives" (#include, #if) are removed.

## 2) Compilation

Input: Preproccessed File (.i)
Ouput: Assembly Code File (.s)

With the output from the preprocessor, the compiler converts the C++ code into low-level assembly code. Optimizations
are done during this stage, and developer errors are caught here (resolution, syntax, etc).

`g++ -S .\src\main.cpp -o .\src\main.s`

```assembly
	.file	"main.cpp"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Hello World\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2211:
	pushq	%rbp
	.seh_pushreg	%rbp

// ...
```

## 3) Assembler

Input: Assembly Code File (.s)
Output: Machine Code File / Object File (.o)

The assembler takes our assembly code, and converts it into MC. The assembly language is a universal language for the
CPU architecture type, but MC can differ for different operating systems (depending on executable format type).

`g++ -c .\src\main.cpp -o .\src\main.o ;  Format-Hex .\src\main.o | Out-File main-bin.txt`

```binary

   Label: C:\Users\Honso\source\row-home\src\main.txt

          Offset Bytes                                           Ascii
                 00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F
          ------ ----------------------------------------------- -----
0000000000000000 64 86 09 00 00 00 00 00 D2 02 00 00 20 00 00 00 d��     Ò�
0000000000000010 00 00 04 00 2E 74 65 78 74 00 00 00 00 00 00 00   � .text
0000000000000020 00 00 00 00 50 00 00 00 7C 01 00 00 64 02 00 00     P   |�  d�
0000000000000030 00 00 00 00 06 00 00 00 20 00 50 60 2E 64 61 74     �     P`.dat
0000000000000040 61 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 a
0000000000000050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0000000000000060 40 00 50 C0 2E 62 73 73 00 00 00 00 00 00 00 00 @ PÀ.bss
0000000000000070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0000000000000080 00 00 00 00 00 00 00 00 80 00 50 C0 2E 72 64 61         � PÀ.rda
0000000000000090 74 61 00 00 00 00 00 00 00 00 00 00 10 00 00 00 ta          �
00000000000000A0 CC 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 Ì�
00000000000000B0 40 00 50 40 2E 78 64 61 74 61 00 00 00 00 00 00 @ P@.xdata
```

The compilation process can be stopped at this point, which would be useful for static libraries (precompiled libraries).

## 4) Linking

Linking is the process of creating a single executable file from several object files. During the compilation processes,
definitions that cannot be found are assumed to come from another file (as compilation up to this point has no external
dependancies). These unknown references are the job of the Linker to fill, replacing them with correct addresses to
code. Errors generated during this stage are usually to do with missing or ambiguious references. Missing references
could simply be the lack of `#include`.
