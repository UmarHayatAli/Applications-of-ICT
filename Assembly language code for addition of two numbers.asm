section .data
    msg db 'Result: ', 0
    msgLen equ $ - msg

    result db 0

section .text
    global _start

_start:
    ; Load numbers
    mov al, 2        ; first number
    mov bl, 3        ; second number

    ; Add AL + BL
    add al, bl       ; AL = 2 + 3 = 5

    ; Convert result to ASCII
    add al, '0'      ; 5 → '5'
    mov [result], al

    ; Print "Result: "
    mov eax, 4       ; sys_write
    mov ebx, 1       ; stdout
    mov ecx, msg
    mov edx, msgLen
    int 0x80

    ; Print result
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    ; Exit program
    mov eax, 1       ; sys_exit
    xor ebx, ebx
    int 0x80
