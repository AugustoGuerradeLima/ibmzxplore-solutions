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
      * 77 NUM      PIC 9(07).
      * 77 NUM-SGN  PIC S9(18).
      * 77 NUM-DEC  PIC 999V999.
      *MAX SIZE->18
      * 77 ALFAB    PIC A(20).
      * 77 ALFABNUM PIC X(30).
      *REGS
       01 CLIENTE.
           02 NOME     PIC X(20) VALUE "A".
           02 RG       PIC X(11) VALUE "9".
           02 CPF      PIC X(11) VALUE "9".
           02 ENDERECO PIC X(20) VALUE "X".
           02 DATANASC.
              03 DIA PIC XX    VALUE "00".
              03 MES PIC XX    VALUE "00".
              03 ANO PIC X(04) VALUE "0000".
              66 MES-ANO RENAMES MES THRU ANO.
      *CONSTS
      *         78 MACULINO VALUE "M".
      *         78 FEMININO VALUE "M".
       01 GENERO PIC X.
           88 MASCULINO VALUE "M".
           88 FEMININO VALUE "M".
      *=================================================================
      *-----------------------------------------------------------------
       PROCEDURE                   DIVISION.
       MAIN-PROCEDURE.
            SET MASCULINO TO TRUE.
            DISPLAY CLIENTE.
            DISPLAY DATANASC.
            DISPLAY GENERO.
            STOP RUN.
       END PROGRAM COBOLBASICS0002.