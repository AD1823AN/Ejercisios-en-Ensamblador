.model small
.stack

.data
    msg db "HOLA MUNDO ADRI",10,13,'$'
    
.code

main PROC
    mov ax,@data
    mov ds,ax  
    
    mov dx, offset msg 
    mov ah, 9
    int 21h
    .exit
    main ENDP
    
end main  



