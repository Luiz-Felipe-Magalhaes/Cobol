       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.
      *********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = FELIPE
      * OBJETIVO: RECEBER E IMPRIMIR UMA STRING
      * DATA   = 01/05/2021
      *********************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOME PICTURE X(10) VALUE SPACES.
       77  WRK-SOBRENOME PICTURE X(10) VALUE SPACES.
       PROCEDURE DIVISION.
           DISPLAY 'DIGITE SEU NOME:'
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'DIGITE SEU SOBRENOME:'
           ACCEPT WRK-SOBRENOME FROM CONSOLE.
           DISPLAY 'NOME COMPLETO:' WRK-NOME(1:6) WRK-SOBRENOME.
           STOP RUN.
