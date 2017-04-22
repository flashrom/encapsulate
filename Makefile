CC ?= gcc
CFLAGS ?= -Wall -std=c99 -pedantic

all: encapsulate

encapsulate: encapsulate.c
	$(CC) $(CFLAGS) -o encapsulate encapsulate.c

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp encapsulate $(DESTDIR)$(PREFIX)/bin
	chown root:root $(DESTDIR)$(PREFIX)/bin/encapsulate
	chmod u+s $(DESTDIR)$(PREFIX)/bin/encapsulate
