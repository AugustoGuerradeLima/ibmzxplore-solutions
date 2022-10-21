       IDENTIFICATION              DIVISION.
       PROGRAM-ID. COBOLBASICS0003.
      *-----------------------------------------------------------------
       DATA                        DIVISION.
      *-----------------------------------------------------------------
       FILE                SECTION.
      *-----------------------------------------------------------------
      *-----------------------------------------------------------------
       WORKING-STORAGE     SECTION.
      *=================================================================
      *-----------------------------------------------------------------
       77 WRK-NOME PIC X(20)        VALUE SPACES.
       77 WRK-DATA PIC 9(8)         VALUE ZEROS.      
       77 WRK-DATA-JULIANA PIC X(5) VALUE ZEROS.
       77 WRK-DIA          PIC 9(1) VALUE ZEROS.
       77 WRK-HORA         PIC 9(8) VALUE ZEROS.
      *=================================================================
      *----------------------------------------------------------------- 
       PROCEDURE                   DIVISION.
      *=================================================================
      *----------------------------------------------------------------- 
           ACCEPT WRK-NOME.
           ACCEPT WRK-DATA FROM DATE.
           ACCEPT WRK-DATA-JULIANA FROM DAY.
           ACCEPT WRK-DIA FROM DAY-OF-WEEK.
           ACCEPT WRK-HORA FROM TIME.
           DISPLAY "HI " WRK-NOME.
           DISPLAY WRK-DATA.
           DISPLAY WRK-DATA-JULIANA.
           DISPLAY WRK-DIA.
           DISPLAY WRK-HORA.
           
           STOP RUN.
       END PROGRAM COBOLBASICS0003.

