# Makefile for NASM + clang on macOS

# Targets
all: hello

# Assemble NASM
hello.o: hello.asm
	nasm -fmacho64 hello.asm -o hello.o

# Link with clang
hello: hello.o
	clang -nostartfiles -o hello hello.o

# Clean up build files
clean:
	rm -f hello.o hello