000010*>
000020 IDENTIFICATION DIVISION.
000030 PROGRAM-ID.   TS000003.
000040 ENVIRONMENT    DIVISION.
000050 CONFIGURATION  SECTION.
000060 DATA DIVISION.
000070 WORKING-STORAGE SECTION.
000072  COPY CBUC0002.
000073  COPY SAMPC003.
000080  01 A PIC 99.
000081  01 B PIC 99.
000082  01 C PIC 99.
000083  01 D PIC 99.
000084  01 RES PIC 99.
000085  01 EXPECTED PIC 99.
000086  01 assert-name PIC X(20).
000087  LINKAGE SECTION.
000088    COPY CBUC0001.
000089 PROCEDURE DIVISION USING CBU-ctx.
000090  MOVE 7 TO EXPECTED.
000091  MOVE 2 TO A.
000092  MOVE 2 TO B.
000093  MOVE 2 TO C.
000094  MOVE 5 TO D.
000095  CALL "SAMPLE03" USING A B C D RES.
000096  MOVE "(2,2,2,5)=7" TO assert-name.
000097  CALL CBU-assert-nb3-equals
000098                  USING CBU-ctx assert-name EXPECTED RES.
000100 END PROGRAM TS000003.
