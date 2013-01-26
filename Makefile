
SRC = $(wildcard src/*.c)
SRC += $(wildcard deps/*.c)
OBJ = $(SRC:.c=.o)

histo: $(SRC)
	$(CC) $^ -std=c99 -lm -I deps -o $@

clean:
	rm -f histo $(OBJ)

.PHONY: clean
