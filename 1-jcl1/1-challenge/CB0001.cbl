      *-----------------------
       IDENTIFICATION DIVISION.
      *-----------------------
       PROGRAM-ID.    NAMES
       AUTHOR.        Otto B. Named
      *--------------------
       ENVIRONMENT DIVISION.
      *--------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT FIRST-NAME ASSIGN TO FNAMES.
           SELECT LAST-NAME  ASSIGN TO LNAMES.
           SELECT FIRST-LAST ASSIGN TO COMBINED.
      *-------------
       DATA DIVISION.
      *-------------
       FILE SECTION.
       FD  FIRST-NAME RECORDING MODE F.
       01  FIRST-REC.
           05  FIRST-IN       PIC X(10).
           05  FILLER         PIC X(70).
      *
       FD  LAST-NAME RECORDING MODE F.
       01  LAST-REC.
           05  LAST-IN        PIC X(15).
           05  FILLER         PIC X(65).
      *
       FD  FIRST-LAST RECORDING MODE F.
       01  FIRST-LAST-REC.
           05  FIRST-OUT      PIC X(10).
           05  LAST-OUT       PIC X(15).
           05  FILLER         PIC X(55).
      *
       WORKING-STORAGE SECTION.
       01 FLAGS.
         05 LASTREC           PIC X VALUE SPACE.
      *------------------
       PROCEDURE DIVISION.
      *------------------
       OPEN-FILES.
           OPEN INPUT  FIRST-NAME.
           OPEN INPUT  LAST-NAME.
           OPEN OUTPUT FIRST-LAST.
      *
       READ-WRITE-UNTIL-LASTREC.
            PERFORM READ-FIRST-NAME
            PERFORM READ-LAST-NAME
            PERFORM UNTIL LASTREC = 'Y'
            PERFORM WRITE-COMBINED
            PERFORM READ-FIRST-NAME
            PERFORM READ-LAST-NAME
            END-PERFORM.
      *
       CLOSE-STOP.
           CLOSE FIRST-NAME.
           CLOSE LAST-NAME.
           CLOSE FIRST-LAST.
           GOBACK.
      *
       READ-FIRST-NAME.
           READ FIRST-NAME
           AT END MOVE 'Y' TO LASTREC
           END-READ.
      *
       READ-LAST-NAME.
           READ LAST-NAME
           END-READ.
      *
       WRITE-COMBINED.
           MOVE SPACES       TO  FIRST-LAST-REC
           MOVE FIRST-IN     TO  FIRST-OUT
           MOVE LAST-IN      TO  LAST-OUT
           WRITE FIRST-LAST-REC.
      *
