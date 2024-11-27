org 100h     ; Punto de entrada del programa

mov ah, 01    ; Funci�n 01h de DOS: Leer un car�cter desde la entrada est�ndar (teclado)
int 21h       ; Llama a la interrupci�n 21h para leer el primer n�mero
sub al, 30h   ; Convierte el car�cter ASCII en un n�mero entero (resta 30h)
mov bl, al    ; Almacena el primer n�mero en el registro BL

mov ah, 01    ; Funci�n 01h de DOS: Leer un car�cter desde la entrada est�ndar (teclado)
int 21h       ; Llama a la interrupci�n 21h para leer el segundo n�mero
sub al, 30h   ; Convierte el car�cter ASCII en un n�mero entero (resta 30h)
add bl, al    ; Suma el segundo n�mero al primero y almac�nalo en BL

add bl, 30h   ; Convierte el resultado en un car�cter ASCII
mov dl, bl    ; Coloca el resultado en el registro DL

mov ah, 02    ; Funci�n 02h de DOS: Escribir un car�cter en la salida est�ndar (pantalla)
int 21h       ; Llama a la interrupci�n 21h para mostrar el resultado

mov ah, 4Ch   ; Funci�n 4Ch de DOS: Terminar el programa
int 21h       ; Llama a la interrupci�n 21h para finalizar el programa

ret           ; Retorno del programa

