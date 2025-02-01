; Autor:
;Matrícula 
org 100h     ; Punto de entrada del programa

mov ah, 01    ; Función 01h de DOS: Leer un carácter desde la entrada estándar (teclado)
int 21h       ; Llama a la interrupción 21h para leer el primer número
sub al, 30h   ; Convierte el carácter ASCII en un número entero (resta 30h)
mov bl, al    ; Almacena el primer número en el registro BL

mov ah, 01    ; Función 01h de DOS: Leer un carácter desde la entrada estándar (teclado)
int 21h       ; Llama a la interrupción 21h para leer el segundo número
sub al, 30h   ; Convierte el carácter ASCII en un número entero (resta 30h)
add bl, al    ; Suma el segundo número al primero y almacénalo en BL

add bl, 30h   ; Convierte el resultado en un carácter ASCII
mov dl, bl    ; Coloca el resultado en el registro DL

mov ah, 02    ; Función 02h de DOS: Escribir un carácter en la salida estándar (pantalla)
int 21h       ; Llama a la interrupción 21h para mostrar el resultado

mov ah, 4Ch   ; Función 4Ch de DOS: Terminar el programa
int 21h       ; Llama a la interrupción 21h para finalizar el programa

ret           ; Retorno del programa

