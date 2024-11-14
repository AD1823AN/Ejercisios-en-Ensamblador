.model small
.data
    numero db 0    ; Variable para almacenar el número

section .text
    global _start

_start:
    ; Mostrar un mensaje para ingresar el número
    mov eax, 4          ; El número de la llamada al sistema para sys_write
    mov ebx, 1          ; Descriptor de archivo estándar de salida (stdout)
    mov ecx, mensaje   ; Dirección del mensaje
    mov edx, mensaje_len ; Longitud del mensaje
    int 0x80           ; Llamar al sistema

    ; Leer el número de 2 cifras
    mov eax, 3          ; El número de la llamada al sistema para sys_read
    mov ebx, 0          ; Descriptor de archivo estándar de entrada (stdin)
    mov ecx, numero     ; Dirección de la variable número
    mov edx, 2          ; Longitud máxima a leer (2 bytes)
    int 0x80           ; Llamar al sistema

    ; Restar 48 (ASCII '0') a cada dígito para obtener el valor numérico
    sub byte [numero], 48
    sub byte [numero + 1], 48

    ; Realiza cualquier operación que desees con el número aquí

    ; Salir del programa
    mov eax, 1          ; El número de la llamada al sistema para sys_exit
    int 0x80

section .data
mensaje db "Ingrese un número de 2 cifras: ", 0
mensaje_len equ $ - mensaje
