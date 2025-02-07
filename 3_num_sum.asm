; Adriana Trejo Patricio 
; Ingeniería en Sistemas 

.model small
.stack
.data
u db 0
d db 0
n db 0
t db 0
max db 0  ; Variable para almacenar el número mayor
msg db 10,13,"!! Ingrese un numero de 3 digitos !!$"
msg1 db 10,13,"!! Numero ingresado: !!$"
msg2 db 10,13,"!! La suma de los numeros es: !!$"
msg3 db 10,13,"!! El mayor de los digitos es: !!$"
.code
mov ax, @data
mov ds, ax
mov ah, 09h
lea dx, msg
int 21h
; Primer dígito
mov ah, 01h
int 21h
sub al, 30h
mov d, al

; Segundo dígito
mov ah, 01h
int 21h
sub al, 30h
mov u, al

; Tercer dígito
mov ah, 01h
int 21h
sub al, 30h
mov n, al

; Sumar los dígitos
mov al, d
add al, u
add al, n
mov t, al

; Mostrar el número ingresado
mov ah, 09h
lea dx, msg1
int 21h 
      
mov ah, 01h
int 21h
sub al, 30h
mov d, al 

mov ah, 01h
int 21h
sub al, 30h
mov u, al 

mov ah, 01h
int 21h
sub al, 30h
mov n, al

; Convertir y mostrar la suma
mov ah, 09h
lea dx, msg2
int 21h

mov al, t
AAM
mov bx, ax
mov ah, 02h
mov dl, bh
add dl, 30h
int 21h

mov ah, 02h
mov dl, bl
add dl, 30h
int 21h

; Encontrar el número mayor
mov al, d
cmp u, al
jg mayor_u
mov al, u
mayor_u:
cmp n, al
jg mayor_n
mov al, n
mayor_n:
mov max, al

; Mostrar el número mayor
mov ah, 09h
lea dx, msg3
int 21h

mov al, max
AAM
mov bx, ax
mov ah, 02h
mov dl, bh
add dl, 30h
int 21h

mov ah, 02h
mov dl, bl
add dl, 30h
int 21h

salir:
    mov ah, 4Ch
    int 21h
end
