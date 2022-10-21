       IDENTIFICATION DIVISION.
       PROGRAM-ID. CB0007.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           
       77  VALOR1 PIC 9(10) VALUE 51.
       77  VALOR2 PIC X(10) VALUE '3'.
       
      *================================================================= 
       PROCEDURE DIVISION.
           
           IF VALOR1 IS NUMERIC
              DISPLAY VALOR1
           END IF.
           
           IF VALOR2 IS NOT NUMERIC
               DISPLAY VALOR2
           END IF.
               
           IF VALOR2 IS ALPHABETIC
               DISPLAY VALOR2.
           END IF.
      *O CONTEUDO E AVALIADO NAO O TIPO     
           STOP RUN.
       END PROGRAM CB0007.
