       IDENTIFICATION DIVISION.
       PROGRAM-ID. CB0009.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           
       77  VALOR  PIC 9(10) VALUE 20.
       77  NUMERO PIC 9(10) VALUE 10.
       
      *================================================================= 
       PROCEDURE DIVISION.
           
           IF VALOR EQUAL NUMERO
               DISPLAY VALOR
               DISPLAY NUMERO
           ELSE
               DISPLAY ':('
           END IF.
           
       END PROGRAM CB0009.
