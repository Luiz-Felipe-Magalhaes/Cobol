       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB10.
      *********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = FELIPE
      * OBJETIVO: RECEBER 2 NOTAS, CALCULA MEDIA E APROVA OU REPROVA
      * UTILIZAR IF/ELSE/END-IF
      * DATA   = 03/05/2021
      *********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOTA1         PIC 9(02) VALUE ZEROS.
       77  WRK-NOTA2         PIC 9(02) VALUE ZEROS.
       77  WRK-MEDIA         PIC Z9,9 VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'DIGITE A NOTA 1: '
               ACCEPT WRK-NOTA1 FROM CONSOLE.
           DISPLAY 'DIGITE A NOTA 2: '
               ACCEPT WRK-NOTA2 FROM CONSOLE.
           DISPLAY '========================'.
      ****************************** MEDIA
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2)/2.
           DISPLAY 'MEDIA = ' WRK-MEDIA.
               IF WRK-MEDIA >= 6
                   DISPLAY 'APROVADO'
              ELSE
                  IF WRK-MEDIA >= 2
                      DISPLAY 'RECUPERAÇÃO'
                  ELSE
                      DISPLAY 'REPROVADO'
                  END-IF
           STOP RUN.
