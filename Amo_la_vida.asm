; Adriana Trejo Patricio 
; Ingeniería Sistemas Computacionales 
.MODEL SMALL
.STACK
.DATA
MSG DB 10,13, 'AMO LA VIDA$'

.CODE

mov ax,@data
mov ds, ax


;imprimir 
mov cx,10 

inicio:

mov ah,9
lea dx, MSG
int 21h
loop inicio:

salir:
.exit
   end

