#
# Makefile for busy-wait IO tests
#
XCC     = gcc
AS	= as
LD      = ld
CFLAGS  = -D MAX_TASKS=$(mt) -D MAX_PRIORITIES=$(mp) -c -fPIC -Wall -Wno-return-type -I. -I../include -mcpu=arm920t -msoft-float
# -g: include hooks for gdb
# -c: only compile
# -mcpu=arm920t: generate code for the 920t architecture
# -fpic: emit position-independent code
# -Wall: report all warnings

ASFLAGS	= -mcpu=arm920t -mapcs-32
# -mapcs: always generate a complete stack frame

LDFLAGS = -init main -Map wtA2.map -N  -T orex.ld -L/u/wbcowan/gnuarm-4.0.2/lib/gcc/arm-elf/4.0.2 -L../lib

all:  wtA2.s wtA2.elf

wtA2.s: wtA2.c wtA2.h
	$(XCC) -S $(CFLAGS) wtA2.c

wtA2.o: wtA2.s
	$(AS) $(ASFLAGS) -o wtA2.o wtA2.s

wtA2.elf: wtA2.o
	$(LD) $(LDFLAGS) -o $@ wtA2.o -lbwio -lgcc

clean:
	-rm -f wtA2.elf *.s *.o wtA2.map
