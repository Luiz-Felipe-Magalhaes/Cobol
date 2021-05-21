       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB12.
      *********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = FELIPE
      * OBJETIVO: RECEBER PRODUTO, VALOR E CALCULAR FRETE
      * UTILIZAR EVALUATE
      * DATA   = 13/05/2021
      *********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-PRODUTO         PIC X(20)    VALUE SPACES.
       77  WRK-UF              PIC X(20)    VALUE SPACES.
       77  WRK-VALOR           PIC 9(06)V99 VALUE ZEROS.
       77  WRK-FRETE           PIC 9(04)V99 VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'PRODUTO: '
           ACCEPT WRK-PRODUTO FROM CONSOLE.

           DISPLAY 'VALOR: '
           ACCEPT WRK-VALOR FROM CONSOLE.

           DISPLAY 'ESTADO A ENTREGAR: '
           ACCEPT WRK-UF FROM CONSOLE.

           EVALUATE WRK-UF
               WHEN 'SP'
                   COMPUTE WRK-FRETE = WRK-VALOR * 0,10
               WHEN 'RJ'
                   COMPUTE WRK-FRETE = WRK-VALOR * 0,15
               WHEN 'MG'
                   COMPUTE WRK-FRETE = WRK-VALOR * 0,12
               WHEN OTHER
                   DISPLAY 'NAO ENTREGAMOS NESSE ESTADO'
               END-EVALUATE.

               DISPLAY 'VALOR FRETE:' WRK-FRETE.

           STOP RUN.
