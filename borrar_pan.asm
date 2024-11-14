CR EQU 13
LF EQU 10
TECLADO_8 EQU 8
IMPRIMIR_9 EQU 9
FIN_4C00H EQU 4C00H
DOS_21H EQU 21H
BIOS_10H EQU 10H
TAB EQU 09H
BELL EQU 07H

DATOS SEGMENT
    RENGLON DB 0
    COLUMNA DB 0
    MENSAJE DB CR,LF,'POSICION (X,Y), DEL MENSAJE: Hola mundo'
            DB 'DESPUES DE BORRAR PANTALLA',CR,LF,'$'
        DATOS ENDS
        PILA SEGMENT STACK
            DW 100 DUP('0')
        PILA ENDS

        CODIGO SEGMENT
            CLSP PROC FAR
            ASSUME CS:CODIGO,DS:DATOS,SS:PILA
            
            
            MOV AX,DATOS
            MOV DS,AX
            LEA DX,MENSAJE
            CALL LIMPIA_PANTALLA
            CALL POSICIONA_CURSOR
            MOV AH,IMPRIMIR_9
            INT DOS_21H
            MOV AX,FIN_4C00H
            INT DOS_21H
            
            CLSP ENDP
            
            LIMPIA_PANTALLA PROC NEAR
            MOV AX,0600H
            MOV BH,01011110b ;color que se modifico
            MOV CX,000H
            MOV DX,484FH
            INT BIOS_10H
            RET
            LIMPIA_PANTALLA ENDP
            
            POSICIONA_CURSOR PROC NEAR
            MOV AH,02 ;Posicion del cursor
            MOV BH,00 ;Pagina en 0,es decir que usara esa pantalla y no otra
            MOV DH,RENGLON ; coordenadas de la pagina por renglon
            MOV DL,COLUMNA ;coordenadas de la pagina por columna
            INT BIOS_10H
            RET
            POSICIONA_CURSOR ENDP
            
        CODIGO ENDS
        END CLSP