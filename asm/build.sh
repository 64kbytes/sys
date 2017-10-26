#!/bin/bash

nasm -f elf hello.s
ld -m elf_i386 hello.o -o hello