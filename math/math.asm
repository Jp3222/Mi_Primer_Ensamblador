section .data

    msg1 db "La suma de 4 + 5 es: "
    len1 equ $ - msg1

    msg2 db 0xA, 0xD,"La resta de 5 + 4 es: "
    len2 equ $ - msg2

    msg3 db 0xA, 0xD, "el incremento de 4 en 1 es: "
    len3 equ $ - msg3

    msg4 db 0xA, 0xD,"el decremento de 4 en 1 es: "
    len4 equ $ - msg4
    
    msg5 db 0xA, 0xD,"Fin del programa", 0xA, 0xD
    len5 equ $ - msg5

section .bss
    res resb 1

section .text
    global _start

_start:
    ;imprimir mensaje 1
    mov eax, 4;Llamar al sistema de escritura
    mov ebx, 1;stdout
    mov ecx, msg1;mensaje en pantalla
    mov edx, len1;tamaño del mensaje
    int 0x80; llamada al sistema de imterrupciones

    mov eax, 4
    mov ebx, 5
    add eax, ebx
    add eax, '0'
    mov [res], eax
    
    mov eax, 4;Llamar al sistema de escritura
    mov ebx, 1;stdout
    mov ecx, res;mensaje en pantalla
    mov edx, 1;tamaño del mensaje
    int 0x80; llamada al sistema de imterrupciones

    ;imprimir mensaje 1
    mov eax, 4;Llamar al sistema de escritura
    mov ebx, 1;stdout
    mov ecx, msg2;mensaje en pantalla
    mov edx, len2;tamaño del mensaje
    int 0x80; llamada al sistema de imterrupciones

    mov eax, 5
    mov ebx, 4
    sub eax, ebx
    add eax, '0'
    mov [res], eax
    
    mov eax, 4;Llamar al sistema de escritura
    mov ebx, 1;stdout
    mov ecx, res;mensaje en pantalla
    mov edx, 1;tamaño del mensaje
    int 0x80; llamada al sistema de imterrupciones

    ;imprimir mensaje 1
    mov eax, 4;Llamar al sistema de escritura
    mov ebx, 1;stdout
    mov ecx, msg3;mensaje en pantalla
    mov edx, len3;tamaño del mensaje
    int 0x80; llamada al sistema de imterrupciones

    mov eax, 4
    inc eax
    add eax, '0'
    mov [res], eax
    
    mov eax, 4;Llamar al sistema de escritura
    mov ebx, 1;stdout
    mov ecx, res;mensaje en pantalla
    mov edx, 1;tamaño del mensaje
    int 0x80; llamada al sistema de imterrupciones

    ;imprimir mensaje 1
    mov eax, 4;Llamar al sistema de escritura
    mov ebx, 1;stdout
    mov ecx, msg4;mensaje en pantalla
    mov edx, len4;tamaño del mensaje
    int 0x80; llamada al sistema de imterrupciones

    mov eax, 4
    dec eax
    add eax, '0'
    mov [res], eax
    
    mov eax, 4;Llamar al sistema de escritura
    mov ebx, 1;stdout
    mov ecx, res;mensaje en pantalla
    mov edx, 1;tamaño del mensaje
    int 0x80; llamada al sistema de imterrupcione

    ;imprimir mensaje 1
    mov eax, 4;Llamar al sistema de escritura
    mov ebx, 1;stdout
    mov ecx, msg5;mensaje en pantalla
    mov edx, len5;tamaño del mensaje
    int 0x80; llamada al sistema de imterrupciones


    mov eax, 1
    int 0x80
