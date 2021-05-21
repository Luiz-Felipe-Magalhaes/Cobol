       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
      *********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = FELIPE
      * OBJETIVO: USO DE SINAL EM OPERAÇÕES ARITMETICAS
      * DATA   = 03/05/2021
      *********************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUM1        PIC 9(02) VALUE ZEROS.
       77  WRK-NUM2        PIC 9(02) VALUE ZEROS.
       77  WRK-RESUL       PIC S9(03) VALUE ZEROS.
       77  WRK-RESUL-ED    PIC -ZZ9 VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'DIGITE O PRIMEIRO VALOR: '
           ACCEPT WRK-NUM1 FROM CONSOLE.
           DISPLAY 'DIGITE O SEGUNDO VALOR: '
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '========================'.

      ****************************** SUBTRACAO
           SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESUL.
           MOVE WRK-RESUL TO WRK-RESUL-ED.
           DISPLAY 'SUBTRACAO = ' WRK-RESUL.
           DISPLAY 'SUBTRACAO = ' WRK-RESUL-ED.
           STOP RUN.
