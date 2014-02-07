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

LDFLAGS = -init main -Map wtA3.map -N  -T orex.ld -L/u/wbcowan/gnuarm-4.0.2/lib/gcc/arm-elf/4.0.2 -L../lib

all:  wtA3.s wtA3.elf

wtA3.s: wtA3.c wtA3.h
	$(XCC) -S $(CFLAGS) wtA3.c

wtA3.o: wtA3.s
	$(AS) $(ASFLAGS) -o wtA3.o wtA3.s

wtA3.elf: wtA3.o
	$(LD) $(LDFLAGS) -o $@ wtA3.o -lbwio -lgcc

clean:
	-rm -f wtA3.elf *.s *.o wtA3.map
