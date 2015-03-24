CC=gcc
CFLAGS=-O2
OBJ_TEST=test.o gg.o
OBJ_DUMP=dump.o gg.o

all: test dump

test: $(OBJ_TEST)
	$(CC) $(CFLAGS) -o $@ $(OBJ_TEST)

dump: $(OBJ_DUMP)
	$(CC) $(CFLAGS) -o $@ $(OBJ_DUMP)

%.o: %.c
	$(CC) $(CFLAGS) -c $< 
