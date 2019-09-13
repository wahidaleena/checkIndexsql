 IDENTIFICATION DIVISION.
       PROGRAM-ID.    TEST DB2.
      *SECURITY.      OPERACTION, REVISION, AND DISTRIBUTION
      *            OF THIS PROGRAM BY WRITTEN AUTHORIZATION
      *            OF THE ABOVE INSTALLACTION ONLY.
      *DATE-WRITTEN.  09/12/19.
      *DATE-COMPLETED.
      **************************CC109**********************************
       
       PROCEDURE DIVISION.
       0000-INITIALIZE-PARA.
          
        EXEC SQL
            INSERT
            INTO     WZIP
            (POSTAL_ZIP_CD, GROWING_REGION_CD)
            VALUES (:ZIP-POSTAL(SEG-INDX), :GREDIT)

        END-EXEC.
     
       6000-FINAL-COUNT.
          CLOSE INFILE
                OUT.
          DISPLAY "-----------------------------------------------------".

