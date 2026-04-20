# linux/Makefile
CC = gcc
CFLAGS = -Wall -Wextra -O2
LDFLAGS = -ltor -lpthread -lssl -lcrypto  # Link with the TOR library and SSL for secure connections
SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin

# Output binary
TARGET = $(BIN_DIR)/TorNetworkPluginLinux

# List of source files
SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES = $(SRC_FILES:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

# Create necessary directories
$(shell mkdir -p $(OBJ_DIR) $(BIN_DIR))

# Build the project
all: $(TARGET)

$(TARGET): $(OBJ_FILES)
	$(CC) $(OBJ_FILES) -o $(TARGET) $(LDFLAGS)

# Compile the source files
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up object and binary files
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)

.PHONY: all clean
