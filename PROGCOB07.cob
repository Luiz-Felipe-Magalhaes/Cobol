       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
      *********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = FELIPE
      * OBJETIVO: OPERADORES ARITIMETICOS
      * DATA   = 03/05/2021
      *********************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUM1    PIC 9(02) VALUE ZEROS.
       77  WRK-NUM2    PIC 9(02) VALUE ZEROS.
       77  WRK-RESUL   PIC 9(03) VALUE ZEROS.
       77  WRK-RESTO   PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'DIGITE O PRIMEIRO VALOR: '
           ACCEPT WRK-NUM1 FROM CONSOLE.
           DISPLAY 'DIGITE O SEGUNDO VALOR: '
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '========================'.

      ****************************** SOMA
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
           DISPLAY 'SOMA = ' WRK-RESUL.

      ****************************** SUBTRACAO
           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'SUBTRACAO = ' WRK-RESUL.

      ****************************** DIVISAO
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
               REMAINDER WRK-RESTO.
           DISPLAY 'DIVISAO = ' WRK-RESUL.
           DISPLAY 'RESTO = ' WRK-RESTO.

      ****************************** MULTIPLICAO
           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'MULTIPLICACAO = ' WRK-RESUL.

      ****************************** COMPUTE (EXPRESSAO)
           COMPUTE WRK-RESUL = (WRK-NUM1 + WRK-NUM1)/2.
           DISPLAY 'MEDIA = ' WRK-RESUL.

           STOP RUN.
