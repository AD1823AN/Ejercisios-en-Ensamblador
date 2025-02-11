.model small

.data

    mensaje1 db "INTRODUCE NUMERO 1: $"

    mensaje2 db "INTRODUCE NUMERO 2: $"

    v1 db ? ; se almacena el primer número

    v2 db ? ; se almacena el segundo número

    resultado db ? ; se almacena el resultado

    msg1 db 'RESULTADO: $'

.code
    mov ax, @data
    mov ds, ax

    mov ah, 09h ; Imprimir mensaje1
    lea dx, mensaje1
    int 21h

    mov ah, 01h ; Leer el primer número
    int 21h
    sub al, 30h ; Convertir de carácter a número
    mov v1, al ; Almacenar el primer número

    mov ah, 09h ; Imprimir mensaje2
    lea dx, mensaje2
    int 21h

    mov ah, 01h ; Leer el segundo número
    int 21h
    sub al, 30h ; Convertir de carácter a número
    mov v2, al ; Almacenar el segundo número

    ; Sumar los números
    mov al, v1
    add al, v2
    mov resultado, al

    mov ah, 09h ; Imprimir mensaje de resultado
    lea dx, msg1
    int 21h

    ; Mostrar el resultado
    mov dl, resultado
    add dl, 30h ; Convertir de número a carácter
    mov ah, 02h ; Función de DOS para imprimir un carácter
    int 21h

    mov ax, 4c00h
    int 21h
