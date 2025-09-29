section .data
    msg db 'Result: ', 0
    msgLen equ $ - msg

    result db 0

section .text
    global _start

_start:
    ; Load 2 into AL
    mov al, 2        ; first number
    mov bl, 3        ; second number

    ;add al,3
    ; Multiply AL * BL → result in AL
    mul bl           ; AL = AL * BL = 6

    ; Convert to ASCII
    add al, '0'        ; 5 → '5'
    mov [result], al

    ; Print "Result: "
    mov eax, 4         ; sys_write
    mov ebx, 1         ; stdout
    mov ecx, msg
    mov edx, msgLen
    int 0x80

    ; Print result digit
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80


    ; Exit
    mov eax, 1
    mov ebx, 0
    int 0x80
