
.MODEL TINY
.STACK
.DATA
    NO DB 10,13,'Carlos Pablo Herrera Escobar$'
    CA DB 10,13,'Carnet 1082417$'
    IN DB 10,13,'Caracter Escogido:$'
.CODE
MAIN:
              ; Obtener Datos
MOV AX,@DATA  ; Direccion de DATA en AX
MOV DS, AX    ; Direccion de DATA en Data segment

              ; Imprimir
MOV AH, 9     ; Funcion (Print String) Imprimir Cadena

LEA DX, NO   ; Obtiene la Direccion de "MSG"
INT 21H       ; Ejecutar
LEA DX, CA   ; Obtiene la Direccion de "MSG"
INT 21H       ; Ejecutar

LEA DX, IN   ; Obtiene la Direccion de "MSG"
INT 21H       ; Ejecutar
MOV DL, 11

MOV AH, 02h

INT 21h
              ; FIN
MOV AH, 4cH   ; Terminacion de Programa con Codigo de Retorno 
INT 21H       ; Ejecutar

END MAIN      ; Terminar Funcion Principal