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

LDFLAGS = -init main -Map wtA4.map -N  -T orex.ld -L/u/wbcowan/gnuarm-4.0.2/lib/gcc/arm-elf/4.0.2 -L../lib -L.

all: libio.a wtA4.s wtA4.elf

io.s: io.c
	$(XCC) -S $(CFLAGS) io.c

io.o: io.s
	$(AS) $(ASFLAGS) -o io.o io.s

libio.a: io.o
	$(AR) $(ARFLAGS) $@ io.o

wtA4.s: wtA4.c wtA4.h
	$(XCC) -S $(CFLAGS) wtA4.c

wtA4.o: wtA4.s
	$(AS) $(ASFLAGS) -o wtA4.o wtA4.s

wtA4.elf: wtA4.o
	$(LD) $(LDFLAGS) -o $@ wtA4.o -lbwio -lio -lgcc

clean:
	-rm -f wtA4.elf *.s *.o wtA4.map
