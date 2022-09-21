       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOLBASICS0005.
      *================================================================= 
       DATA DIVISION.
      *----------------------------------------------------------------- 
       FILE SECTION.
      *----------------------------------------------------------------- 
       WORKING-STORAGE SECTION.
       77 WRK-ACUMULADOR PIC 9(2) VALUE ZEROS.
       77 WRK-VALUE      PIC 9(3) VALUE 100.
      *================================================================= 
       PROCEDURE DIVISION.
      *ADD 
            ADD 1   TO WRK-ACUMULADOR.
            ADD 1 3 TO WRK-ACUMULADOR
            DISPLAY    WRK-ACUMULADOR.
            
            ADD 1 GIVING WRK-ACUMULADOR.
            DISPLAY    WRK-ACUMULADOR.
            
      *COMPUTE
            COMPUTE WRK-VALUE = WRK-VALUE/2.
            DISPLAY WRK-VALUE.
       
            STOP RUN.
       END PROGRAM COBOLBASICS0005.
