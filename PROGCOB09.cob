       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB09.
      *********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = FELIPE
      * OBJETIVO: CALCULA MEDIA DE VENDAS
      * DATA   = 03/05/2021
      *********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-VENDA1        PIC 9(05)V99 VALUE ZEROS.
       77  WRK-VENDA2        PIC 9(05)V99 VALUE ZEROS.
       77  WRK-MEDIA         PIC 9(06)V99 VALUE ZEROS.
       77  WRK-MEDIA-ED      PIC $ZZ.ZZ9,99 VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'DIGITE O VALOR DA VENDA 1: '
               ACCEPT WRK-VENDA1 FROM CONSOLE.
           DISPLAY 'DIGITE O VALOR DA VENDA 2: '
               ACCEPT WRK-VENDA2 FROM CONSOLE.
           DISPLAY '========================'.

      ****************************** MEDIA
           COMPUTE WRK-MEDIA = (WRK-VENDA1 + WRK-VENDA2)/2.
           MOVE WRK-MEDIA TO WRK-MEDIA-ED.
           DISPLAY 'MEDIA DAS VENDAS = ' WRK-MEDIA-ED
           STOP RUN.
