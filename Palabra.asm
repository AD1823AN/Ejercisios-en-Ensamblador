.model small
.stack  256h
.data

CR equ 13

LF equ 10  

mens db ' Escribe lo que quieras y te lo pongo al reves', CR,LF,'s'

salto db CR,LF, '$'

cadena label byte

cant db 20
max  db 00 
campo db 20 dup(' ')   
.code
inicio:
mov ax,@data
mov ds,ax 
push ds
pop es

mov ah,09h
lea dx,mens
int 21h 

mov ah,0ah
lea dx,cadena
int 21h

mov ah,09h
lea dx,salto
int 21h

mov cl,cant
mov bx,offset campo
add bl,cant

loopo:
mov dl,[bx]
mov ah,02h
int 21h
dec bl 
dec cl
cmp cl,0
je salir
jmp loopo

salir:
mov dl,[bx]
 mov ah,02h
 int 21h
 mov ax,4c00h
 int 21h
 
 end inicio
