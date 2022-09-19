
       IDENTIFICATION              DIVISION.
       PROGRAM-ID. COBOLBASICS0002.
      *=================================================================
      *-----------------------------------------------------------------
       DATA                        DIVISION.
      *-----------------------------------------------------------------
       FILE                SECTION.
      *-----------------------------------------------------------------
      *-----------------------------------------------------------------
       WORKING-STORAGE     SECTION.
      *-----------------------------------------------------------------
       77 NUM      PIC 9(07).
       77 NUM-SGN  PIC S9(18).
       77 NUM-DEC  PIC 999V999.
      *MAX SIZE->18
       77 ALFAB    PIC A(20).
       77 ALFABNUM PIC X(30).

      *REGS
       01 CLIENTE.
           02 NOME     PIC X(50) VALUE "AUGUSTO".
           02 RG       PIC X(11) VALUE "XXXXX".
           02 CPF      PIC X(11) VALUE "XXXXX".
           02 ENDERECO PIC X(20) VALUE "RUA X".
           02 DATANASC PIC X(08) VALUE "X".
      *=================================================================
      *-----------------------------------------------------------------
       PROCEDURE                   DIVISION.
       MAIN-PROCEDURE.
            DISPLAY CLIENTE.
            STOP RUN.
       END PROGRAM COBOLBASICS0002.
