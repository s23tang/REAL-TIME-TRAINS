#
# Makefile for busy-wait IO tests
#
XCC     = gcc
AS	= as
LD      = ld
CFLAGS  = -c -fPIC -Wall -I. -I../include -mcpu=arm920t -msoft-float
# -g: include hooks for gdb
# -c: only compile
# -mcpu=arm920t: generate code for the 920t architecture
# -fpic: emit position-independent code
# -Wall: report all warnings

ASFLAGS	= -mcpu=arm920t -mapcs-32
# -mapcs: always generate a complete stack frame

LDFLAGS = -init main -Map wtA1.map -N  -T orex.ld -L/u/wbcowan/gnuarm-4.0.2/lib/gcc/arm-elf/4.0.2 -L../lib

all:  wtA1.s wtA1.elf

wtA1.s: wtA1.c wtA1.h
	$(XCC) -S $(CFLAGS) wtA1.c

wtA1.o: wtA1.s
	$(AS) $(ASFLAGS) -o wtA1.o wtA1.s

wtA1.elf: wtA1.o
	$(LD) $(LDFLAGS) -o $@ wtA1.o -lbwio -lgcc

clean:
	-rm -f wtA1.elf *.s *.o wtA1.map
