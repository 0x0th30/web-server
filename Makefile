CC = gcc
CFLAGS = -Wall -Wextra -Werror -std=c11

TARGET = web-server
SRC = ./src/web-server.c
OBJ = $(SRC:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(OBJ)

run: all
	./$(TARGET)

