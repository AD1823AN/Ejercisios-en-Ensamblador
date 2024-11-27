.model small
.data
    mensaje1 db "INTRODUCE NUMERO 1: $"
    mensaje2 db "INTRODUCE NUMERO 2: $"
    v1 db ? ; se almacena el primer n�mero
    v2 db ? ; se almacena el segundo n�mero
    resultado db ? ; se almacena el resultado
    msg1 db 'RESULTADO: $'

.code
    mov ax, @data
    mov ds, ax

    mov ah, 09h ; Imprimir mensaje1
    lea dx, mensaje1
    int 21h

    mov ah, 01h ; Leer el primer n�mero
    int 21h
    sub al, 30h ; Convertir de car�cter a n�mero
    mov v1, al ; Almacenar el primer n�mero

    mov ah, 09h ; Imprimir mensaje2
    lea dx, mensaje2
    int 21h

    mov ah, 01h ; Leer el segundo n�mero
    int 21h
    sub al, 30h ; Convertir de car�cter a n�mero
    mov v2, al ; Almacenar el segundo n�mero

    ; Sumar los n�meros
    mov al, v1
    add al, v2
    mov resultado, al

    mov ah, 09h ; Imprimir mensaje de resultado
    lea dx, msg1
    int 21h

    ; Mostrar el resultado
    mov dl, resultado
    add dl, 30h ; Convertir de n�mero a car�cter
    mov ah, 02h ; Funci�n de DOS para imprimir un car�cter
    int 21h

    mov ax, 4c00h
    int 21h
