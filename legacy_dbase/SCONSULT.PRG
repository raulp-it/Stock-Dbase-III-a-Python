** MENU CONSULTAS **
DO WHILE .T.
    CLEAR
    STORE 0 TO VCOD_MERC
    @1,1 TO 22,78 DOUBLE
    @2,2 SAY 'MASTERCHIP COMPUTACION'
    @2,62 SAY 'FECHA: '+DTOC(fecha)
    @3,28 SAY 'SISTEMA GENERAL DE STOCK'
    @4,28 TO 4,51 DOUBLE
    @7,33 SAY 'MENU CONSULTAS'
    @6,32 TO 6,47
    @8,32 TO 8,47
    SELECT 2
    @24,1 SAY 'CODIGO MERCADERIA = 0 PARA TERMINAR'
    @10,2 SAY 'Codigo a Consultar: 'GET VCOD_MERC PICTURE 999999
    READ
    IF VCOD_MERC = 0
        EXIT
    ENDIF
    SEEK VCOD_MERC
    IF EOF()
        @24,1
        @23,23 SAY 'CODIGO INEXISTENTE...'
        WAIT 'Pulse una tecla para continuar'
        @23,0
        LOOP
    ELSE
        SELECT 1
        SEEK VCOD_MERC
        @14,45 SAY 'STOCK ACTUAL: '+STR(S_ACTUAL)