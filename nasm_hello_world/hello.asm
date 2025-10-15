global _main

section .data
message: db "Hello, World", 10
len equ $ - message

section .text
_main:
    mov rax, 0x2000004   ; write
    mov rdi, 1           ; stdout
    lea rsi, [rel message]
    mov rdx, len
    syscall

    mov rax, 0x2000001   ; exit
    xor rdi, rdi
    syscall