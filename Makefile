# basic setup
CC         = gcc
CFLAGS     = -shared -Wall
BIN        = time.so
LUA_SYS_VER= 5.3
LUA_LIBDIR = /usr/local/lib/lua/$(LUA_SYS_VER)

all:
	$(CC) -o $(BIN) $(CFLAGS) time.c

install:

	cp *.so $(LUA_LIBDIR)

clean:
	rm -f time.so
