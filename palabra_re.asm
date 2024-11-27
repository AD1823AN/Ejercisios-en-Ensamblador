.model small
.stack

.data
    msg db "AMO LA VIDA ",10,13,'$'

.code

main PROC
    mov ax, @data
    mov ds, ax
    
    mov cx, 10  ; Establece el contador en 10 para repetir el mensaje 10 veces

repeat_message:
    mov dx, offset msg
    mov ah, 9
    int 21h
    
    loop repeat_message  ; Resta 1 de CX y salta al principio del bucle si CX no es 0
    
    .exit
main ENDP

end main
