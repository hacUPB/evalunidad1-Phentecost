// Pablo Vélez Mesa
// 000438833
// pablo.velezm@upb.edu.co

// Codigo

(INICIO) 
 @KBD
 D=M
 @84
 D=D-A
 @LINEAVERTICAL 
 D;JEQ
 
 @KBD
 D=M
 @67
 D=D-A 
 @LIMPIAR
 D;JEQ
 
 
 @INICIO
 0;JMP
 

 (LINEAVERTICAL)
 @16400
 D=A
 @coord
 M=D 
 @256
 D=A
 @cont
 M=D
 @CP
 M=D
 @32
 D=A 
 @salto
 M=D
 @bool
 M=0
 @SET
 0;JMP

 (LINEAHORIZONTAL)
 @20496
 D=A
 @coord
 M=D 
 @32
 D=A
 @cont
 M=D
 @CP
 M=-1
 @1
 D=A 
 @salto
 M=D
 @bool
 M=1
 @SET
 0;JMP
 
(LIMPIAR)
 @16384 
 D=A
 @coord 
 M=D 
 @8192 
 D=A
 @cont 
 M=D
 @1
 D=A
 @CP
 M=0
 @salto
 M=D
 @SET
 0;JMP
 
(SET)
 @coord 
 D=M
 @pscreen
 M=D //memoria donde inicia la pantalla01
 

(PAINT)
 @cont 
 D=M 
 @FIN
 D;JEQ 
 @CP
 D=M
 @pscreen
 A=M 
 M=D 
 @cont 
 M=M-1
 @salto
 D=M
 @pscreen
 M=M+D 
 @PAINT
 0;JMP

 
 
(FIN)
@bool
D=M
@LINEAHORIZONTAL
D;JEQ
@INICIO
0;JMP


