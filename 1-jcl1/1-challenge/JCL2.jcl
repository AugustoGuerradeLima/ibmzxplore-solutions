//JCL2    JOB 1
//EXP EXPORT SYMLIST=*
//BEFORE   EXEC PGM=IKJEFT01,PARM='%PREJCL2'
//SYSPROC  DD DSN=ZXP.PUBLIC.EXEC,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DUMMY
//*-----------------------------------------------------------
//*
//* TO SOLVE THIS CHALLENGE, NO CHANGE NEEDED TO COBOL, AND
//* CONCENTRATE ON UNDERSTANDING THE LINK BETWEEN:
//* +  COBOL FILE-CONTROL ASSIGN NAME (PROGRAM INTERNAL NAME)
//* +  JCL DD NAME                    (JOB NAME TO MATCH COBOL)
//* +  JCL DD DSN NAME                (CURRENT DATASET TO USE)
//*
//*-----------------------------------------------------------
//***************************************************/
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DSN=ZXP.PUBLIC.SOURCE(CBL0001),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(CBL0001),DISP=SHR
//***************************************************/
// IF RC = 0 THEN
//***************************************************/
//RUN     EXEC PGM=CBL0001
//STEPLIB   DD DSN=&SYSUID..LOAD,DISP=SHR
//FNAMES    DD DSN=ZXP.PUBLIC.INPUT(FNAMES),DISP=SHR
//LNAMES    DD DSN=ZXP.PUBLIC.INPUT(LNAMES),DISP=SHR
//COMBINE   DD DSN=&SYSUID..OUTPUT(NAMES),DISP=SHR
//SYSOUT    DD SYSOUT=*,OUTLIM=15000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
//***************************************************/
// ELSE
// ENDIF
//AFTER    EXEC PGM=IKJEFT1A
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *,SYMBOLS=EXECSYS
LISTDS '&SYSUID..OUTPUT(NAMES)'
