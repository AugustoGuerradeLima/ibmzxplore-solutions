       IDENTIFICATION DIVISION.
       PROGRAM-ID. CB0008.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           
       77  VALOR1 PIC S9(10) VALUE ZEROS.
       77  VALOR2 PIC 9(10)  VALUE 1.
       
      *================================================================= 
       PROCEDURE DIVISION.
           MOVE -1 TO VALOR1
           IF VALOR1 IS NEGATIVE
               DISPLAY VALOR1
           END IF.
           IF VALOR2 IS POSITIVE
               DISPLAY VALOR2
           END IF.
           IF VALOR1 IS ZEROS
               DISPLAY VALOR2
           END IF.
           STOP RUN.
       END PROGRAM CB0008.
