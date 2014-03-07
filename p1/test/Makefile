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

all: syscalls.s nameServer.s notifier.s clockServer.s wtA4.s io.s wtA4.elf

syscalls.s: syscalls.c syscalls.h
	$(XCC) -S $(CFLAGS) syscalls.c

syscalls.o: syscalls.s
	$(AS) $(ASFLAGS) -o syscalls.o syscalls.s

nameServer.s: nameServer.c nameServer.h
	$(XCC) -S $(CFLAGS) nameServer.c

nameServer.o: nameServer.s
	$(AS) $(ASFLAGS) -o nameServer.o nameServer.s

notifier.s: notifier.c notifier.h
	$(XCC) -S $(CFLAGS) notifier.c

notifier.o: notifier.s
	$(AS) $(ASFLAGS) -o notifier.o notifier.s

clockServer.s: clockServer.c clockServer.h
	$(XCC) -S $(CFLAGS) clockServer.c

clockServer.o: clockServer.s
	$(AS) $(ASFLAGS) -o clockServer.o clockServer.s

#rpsServer.s: rpsServer.c rpsServer.h
#	$(XCC) -S $(CFLAGS) rpsServer.c

#rpsServer.o: rpsServer.s
#	$(AS) $(ASFLAGS) -o rpsServer.o rpsServer.s

io.s: io.c io.h
	$(XCC) -S $(CFLAGS) io.c

io.o: io.s
	$(AS) $(ASFLAGS) -o io.o io.s

wtA4.s: wtA4.c wtA4.h
	$(XCC) -S $(CFLAGS) wtA4.c

wtA4.o: wtA4.s
	$(AS) $(ASFLAGS) -o wtA4.o wtA4.s

wtA4.elf: syscalls.o nameServer.o notifier.o clockServer.o io.o wtA4.o
	$(LD) $(LDFLAGS) -o $@ syscalls.o nameServer.o notifier.o clockServer.o io.o wtA4.o -lbwio -lgcc

clean:
	-rm -f wtA4.elf *.s *.o wtA4.map
