       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB06.
      *********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = FELIPE
      * OBJETIVO: RECEBER CPF
      * IMPRIMIR FORMATADO
      * DATA   = 01/05/2021
      *********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-CPF     PIC X(11) VALUE ZEROS.
       77  WRK-CPF-ED  PIC ZZZ.ZZZ.ZZ9/99.
       PROCEDURE DIVISION.
           ACCEPT WRK-CPF FROM CONSOLE.
      *********MOSTRA DADOS
           MOVE WRK-CPF TO WRK-CPF-ED.
           DISPLAY 'CPF..' WRK-CPF-ED.
           STOP RUN.
