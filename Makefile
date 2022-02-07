CC=gcc
CFLAGS=-Wall -pedantic -std=c99 -O0 -g
LFLAGS=-lm
OBJCMD=$(CC) $(CFLAGS) $< -c
EXECMD=$(CC) $^ -o $@ $(LFLAGS)
OBJS=example.o unit_test.o integration_test.o
EXEC=unit_test integration_test

all: $(EXEC)

example.o: example.c example.h
	$(OBJCMD)

unit_test.o: unit_test.c example.h
	$(OBJCMD)

integration_test.o: integration_test.c example.h
	$(OBJCMD)

unit_test: unit_test.o example.o
	$(EXECMD)

integration_test: integration_test.o example.o
	$(EXECMD)

clean:
	rm -f $(OBJS)

destroy: clean
	rm -f $(EXEC)
