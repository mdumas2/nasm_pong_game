# Hello World in NASM on macOS M1

This is a minimal "Hello World" program written in NASM for macOS. It demonstrates how to write a 64-bit assembly program and link it using `clang` on an Apple Silicon Mac (M1/M2).

---

## Prerequisites

1. **Install NASM**

```bash
brew install nasm
```

2. **Install Rosetta 2** (required for running x86_64 binaries)

```bash
softwareupdate --install-rosetta
```

3. **Start a terminal in x86_64 mode** (Rosetta)

```bash
arch -x86_64 zsh
```

---

## Build and Run

You can build and run the project with a single command using the Makefile.

```bash
make all   # Builds the program and links it
./hello    # Runs the executable
```

To clean up build files:

```bash
make clean
```

You should see:

```
Hello, World
```

---

## Resources

* NASM tutorial: [https://cs.lmu.edu/~ray/notes/nasmtutorial/](https://cs.lmu.edu/~ray/notes/nasmtutorial/)

---

## Notes

* The program uses **RIP-relative addressing** (`lea rsi, [rel message]`) to access static data safely on macOS.
* Running under **Rosetta (x86_64)** ensures compatibility with NASM-generated macho64 objects.
