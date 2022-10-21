       IDENTIFICATION              DIVISION.
       PROGRAM-ID. COBOLBASICS0004.
      *=================================================================
      *-----------------------------------------------------------------
       DATA                        DIVISION.
      *-----------------------------------------------------------------
       FILE                SECTION.
      *-----------------------------------------------------------------
      *-----------------------------------------------------------------
       WORKING-STORAGE     SECTION.
      *=================================================================
      *-----------------------------------------------------------------
           77 WRK-VALUEONE PIC 9(10) VALUE 10.
           77 WRK-VALUETWO PIC 9(10) VALUE ZEROS.
           
       01 TOT.
           05 TOTAL PIC 9(10) VALUE 10.
        
       01 TOT-2.
           05 TOTAL PIC 9(10) VALUE 10.
      *=================================================================
      *----------------------------------------------------------------- 
       PROCEDURE                   DIVISION.
      *=================================================================
      *----------------------------------------------------------------- 
           DISPLAY WRK-VALUEONE
           DISPLAY WRK-VALUETWO.
           
           MOVE WRK-VALUEONE TO WRK-VALUETWO
           DISPLAY WRK-VALUEONE
           DISPLAY WRK-VALUETWO.
           
           MOVE 70 TO WRK-VALUEONE
           MOVE WRK-VALUEONE TO WRK-VALUETWO
           DISPLAY WRK-VALUEONE
           DISPLAY WRK-VALUETWO.
           
           MOVE TOTAL OF TOT TO TOTAL OF TOT-2
           DISPLAY TOTAL OF TOT
           DISPLAY TOTAL OF TOT-2.
           
           STOP RUN.
       END PROGRAM COBOLBASICS0004.
