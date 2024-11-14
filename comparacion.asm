 .model small
.stack
.data

  var1 db ?
   var2 db ?
   msg1 db '++ El primero es mayor++ $'
   msg2 db '++ El primero es menor++$'
   msg3 db '++ Son iguales++$'
   msg4 db '++ Primero valor++ $'
   msg5 db '++ Segundo valor++ $'

    mensaje1 db "INTRODUCE NUMERO 1: $"
    mensaje2 db "INTRODUCE NUMERO 2: $"
    v1 db ? ; se almacena el primer n�mero
    v2 db ? ; se almacena el segundo n�mero
    resultado db ? ; se almacena el resultado
    

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
 
   mov ah,00h
   mov al,03h
   int 10h

   mov ah,02h
   mov dx,0510h
   mov bh,0
   int 10h
   

   mov ah,09h
   lea dx,msg4
   int 21h

   mov ah,07h
   int 21h

   mov ah, 02h
   mov dl,al
   int 21h
   mov  var1,al

   mov ah,09h
   lea dx,msg5
   int 21h

   mov ah,07h
   int 21h

   mov ah,02h
   mov dl,al
   int 21h
   mov var2,al


  cmp var1,al
  ja mayor
  jb menor
  je igual

mayor:  

   mov ah,09h
   lea dx,msg1
   int 21h
   jmp salir

menor:

   mov ah,09h
   lea dx,msg2
   int 21h
   jmp salir

igual:

   mov ah,09h
   lea dx,msg3
   int 21h
   jmp salir


salir:

  .exit
   end
