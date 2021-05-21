       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB16.
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
       77  WRK-MEDIA         PIC 9(02)V9 VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
               PERFORM 0100-INICIALIZAR.
               PERFORM 0200-PROCESSAR.
               PERFORM 0300-FINALIZAR.
               STOP RUN.
       0100-INICIALIZAR.
           DISPLAY 'DIGITE A NOTA 1: '
               ACCEPT WRK-NOTA1 FROM CONSOLE.
           DISPLAY 'DIGITE A NOTA 2: '
               ACCEPT WRK-NOTA2 FROM CONSOLE.

       0200-PROCESSAR.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2)/2.
           DISPLAY 'MEDIA = ' WRK-MEDIA.
               IF WRK-MEDIA >= 6
                   DISPLAY 'APROVADO'
              ELSE
                  IF WRK-MEDIA >= 2
                      DISPLAY 'RECUPERACAO'
                  ELSE
                      DISPLAY 'REPROVADO'
                  END-IF.

       0300-FINALIZAR.
           DISPLAY '-------------------------'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
