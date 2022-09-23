       IDENTIFICATION              DIVISION.
       PROGRAM-ID. COBOLBASICS0006.
      *----------------------------------------------------------------- 
       DATA                        DIVISION.
       FILE                SECTION.
       WORKING-STORAGE     SECTION.
       77 SALDO     PIC 9(10) VALUE ZEROS.
       77 RESULTADO PIC 9(10) VALUE ZEROS.
       77 VALOR     PIC 9(10) VALUE 60.
       77 RESTO     PIC 9(10) VALUE ZEROS.
      *----------------------------------------------------------------- 
       PROCEDURE               DIVISION.
      *    MOVE 100    TO SALDO 
      *     DISPLAY SALDO  //100
      *     SUBTRACT 50 FROM SALDO
      *     DISPLAY SALDO. //50
           
      *     DIVIDE 2 INTO VALOR.
      *     DISPLAY VALOR.//30
            
      *      DIVIDE 2 INTO VALOR GIVING RESULTADO.     
      *      DISPLAY RESULTADO " " VALOR.//30    60
              
             DIVIDE VALOR BY 2 GIVING RESULTADO
             REMAINDER RESTO.
             DISPLAY VALOR.
             DISPLAY RESULTADO.
             DISPLAY RESTO.
             
             MULTIPLY 2 BY VALOR GIVING RESULTADO.
             DISPLAY VALOR.
             DISPLAY RESULTADO.
           
           STOP RUN.
       END PROGRAM COBOLBASICS0006.
