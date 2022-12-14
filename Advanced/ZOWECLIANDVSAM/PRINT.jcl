//REPRO2   JOB  REPROJCL 
//STEP1    EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=A
//SYSIN    DD   *
       PRINT -
           INDATASET(Zxxxxx.VSAMDS) -
           COUNT(1000) -
           CHARACTER
/*
