
.MODEL SMALL
.DATA
string DB 'VLADEMER PUTIN ' 
.CODE
    MAIN PROC FAR
      .STARTUP
      MOV CX,14
      MOV SI , OFFSET STRING 
      
      A:
         PUSH [SI]
         INC SI
         LOOP A
         
         MOV CX,14
         MOV AH,02H
      
        B:
           POP DX
           INT 21H
           LOOP B 
      
      
      
      
        
      .EXIT
    MAIN ENDP
        
END MAIN 