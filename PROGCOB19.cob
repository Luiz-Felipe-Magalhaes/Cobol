       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB19.
      *********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = FELIPE
      * OBJETIVO: RECEBER UM NUMERO E GERAR A TABUADA DE 1 A 10
      * UTILIZAR PERFORM VARYING
      * DATA   = 13/05/2021
      *********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUMERO                 PIC 9(02)    VALUE ZEROS.
       77  WRK-CONTADOR               PIC 9(02)    VALUE 1.
       77  WRK-RESUL                  PIC 9(03)    VALUE ZEROS.

       PROCEDURE DIVISION.

       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-NUMERO > 0
               PERFORM 0200-PROCESSAR
           END-IF.
           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIALIZAR.
           DISPLAY 'NUMERO..'
           ACCEPT WRK-NUMERO.

       0200-PROCESSAR.
           PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
                   UNTIL WRK-CONTADOR > 10
               COMPUTE WRK-RESUL = WRK-NUMERO * WRK-CONTADOR
               DISPLAY WRK-NUMERO ' X ' WRK-CONTADOR ' = ' WRK-RESUL
           END-PERFORM.


       0300-FINALIZAR.
           DISPLAY '----------------'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
