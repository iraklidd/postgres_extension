# Define the compiler
CC = gcc

# Define compiler flags
CFLAGS = -Wall -g

# Define the target executable name
TARGET = myprogram

# Define the source file
SRC = 1.c

# Define the object file
OBJ = $(SRC:.c=.o)t

# The default rule
all: $(TARGET)

# Rule to link the object file to create the executable
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

# Rule to compile the source file into an object file
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Rule to clean up generated files
clean:
	rm -f $(TARGET) $(OBJ)
