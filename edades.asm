.model small
.data
    mensaje1 db 'Ingrese la edad de la primera persona: $'
    mensaje2 db 'Ingrese la edad de la segunda persona: $'
    mensaje_mayor db 'La primera persona es mayor. $'
    mensaje_igual db 'Ambas personas tienen la misma edad. $'
    mensaje_menor db 'La segunda persona es mayor. $'
    mensaje3 db 'Ingrese el nombre la primera persona: $'
    mensaje4 db 'Ingrese el nombre de la segunda persona: $'
    edad1 db 0
    edad2 db 0
    nombre1 db 20
    nombre2 db 20

.code
    mov ax, @data
    mov ds, ax
;nombre1
    lea dx, mensaje3
    mov ah, 09h
    int 21h
    mov ah, 0ah
    lea dx, nombre1
    int 21h

    ; Solicitar edad de la primera persona
    lea dx, mensaje1
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h
    sub al, 30h
    mov edad1, al

    ;nombre2
    lea dx, mensaje4
    mov ah, 09h
    int 21h
    mov ah, 0ah
    lea dx, nombre2
    int 21h

    ; Solicitar edad de la segunda persona
    lea dx, mensaje2
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h
    sub al, 30h
    mov edad2, al

    ; Comparar edades
    mov al, edad1
    cmp al, edad2
    je iguales
    jl segunda_mayor
    jmp primera_mayor

iguales:
    lea dx, mensaje_igual
    mov ah, 09h
    int 21h
    jmp fin

segunda_mayor:
    lea dx, mensaje_menor
    mov ah, 09h
    int 21h
    jmp fin

primera_mayor:
    lea dx, mensaje_mayor
    mov ah, 09h
    int 21h

fin:
    mov ah, 4Ch
    int 21h
end
