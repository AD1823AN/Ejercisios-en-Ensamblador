org 100h

mov cx, 12  ; Repetir 12 veces

print_loop:
  ; Configura el color de texto a verde (color 2 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 2    ; Color verde
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color verde
  mov ah, 09
  lea dx, hola_mundo
  int 21h

  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h

  ; Configura el color de texto a rojo (color 4 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 4    ; Color rojo
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color rojo
  mov ah, 09
  lea dx, hola_mundo
  int 21h

  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h

  ; Configura el color de texto a negro (color 0 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h
         
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h

  ; Configura el color de texto a negro (color 0 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h

  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h
  
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h
  
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h  
  
  ; Borra la pantalla y configura el color de fondo a negro
  mov ah, 06h
  mov al, 0    ; Valor cero para borrar toda la pantalla
  mov bh, 0    ; Página actual
  mov ch, 0    ; Fila inicial
  mov cl, 0    ; Columna inicial
  mov dh, 24   ; Fila final
  mov dl, 79   ; Columna final
  int 10h

  
  
  ; Configura el color de texto a rojo (color 4 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 4    ; Color rojo
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color rojo
  mov ah, 09
  lea dx, hola_mundo
  int 21h   
  
  
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h   
    
    ; Configura el color de texto a amarillo (color 14 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 14   ; Color amarillo
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color amarillo
  mov ah, 09
  lea dx, hola_mundo
  int 21h 
  
  
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h   
  
    
  
  
    ; Configura el color de texto a negro (color 0 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h
         
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h

  ; Configura el color de texto a negro (color 0 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h

  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h
  
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h
  
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h
        
        
        
        
        
  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h 
  
  
  ; Borra la pantalla y configura el color de fondo a negro
  mov ah, 06h
  mov al, 0    ; Valor cero para borrar toda la pantalla
  mov bh, 0    ; Página actual
  mov ch, 0    ; Fila inicial
  mov cl, 0    ; Columna inicial
  mov dh, 24   ; Fila final
  mov dl, 79   ; Columna final
  int 10h
  
   
  
    ; Configura el color de texto a rojo (color 4 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 4    ; Color rojo
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color rojo
  mov ah, 09
  lea dx, hola_mundo
  int 21h 
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h  
  
   ; Configura el color de texto a verde (color 2 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 2    ; Color verde
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color verde
  mov ah, 09
  lea dx, hola_mundo
  int 21h

  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h   
  
  ; Configura el color de texto a negro (color 0 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h
         
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h

  ; Configura el color de texto a negro (color 0 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h

  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h
  
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h
  
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h
   
   
  ; Borra la pantalla y configura el color de fondo a negro
  mov ah, 06h
  mov al, 0    ; Valor cero para borrar toda la pantalla
  mov bh, 0    ; Página actual
  mov ch, 0    ; Fila inicial
  mov cl, 0    ; Columna inicial
  mov dh, 24   ; Fila final
  mov dl, 79   ; Columna final
  int 10h 
  
    ; Configura el color de texto a amarillo (color 14 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 14   ; Color amarillo
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color amarillo
  mov ah, 09
  lea dx, hola_mundo
  int 21h 
  
  
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h 
  
  ; Configura el color de texto a rojo (color 4 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 4    ; Color rojo
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color rojo
  mov ah, 09
  lea dx, hola_mundo
  int 21h

  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h 
  
  ; Configura el color de texto a negro (color 0 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h
         
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h

  ; Configura el color de texto a negro (color 0 en el modo de texto)
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h

  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h
  
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h
  
  mov ah, 09h
  mov al, 2    ; Número de páginas
  mov bh, 0    ; Página actual
  mov bl, 0    ; Color negro
  mov cx, 13   ; Longitud de la cadena
  mov dh, 0    ; Fila
  mov dl, 0    ; Columna
  mov es, dx   ; Segmento de la cadena
  mov di, dx   ; Offset de la cadena
  int 10h

  ; Imprime "Hola Mundo" en color negro
  mov ah, 09
  lea dx, hola_mundo
  int 21h       
  ; Espera un tiempo (retraso) para ver el mensaje
  mov ah, 86h
  mov cx, 5000  ; Ajusta este valor para controlar la velocidad del mensaje
  int 15h 
  
  ; Borra la pantalla y configura el color de fondo a negro
  mov ah, 06h
  mov al, 0    ; Valor cero para borrar toda la pantalla
  mov bh, 0    ; Página actual
  mov ch, 0    ; Fila inicial
  mov cl, 0    ; Columna inicial
  mov dh, 24   ; Fila final
  mov dl, 79   ; Columna final
  int 10h

  ; Continúa el bucle
  loop print_loop

; Termina el programa
int 20h

hola_mundo db '|   0    |!', 13, 10, '$'
