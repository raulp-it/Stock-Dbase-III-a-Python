** MENU BAJAS **
DO WHILE .T.
    CLEAR
    STORE 0 TO VCOD_MERC
    STORE SPACE(1) TO SINO
    @1,1 TO 22,78 DOUBLE
    @2,2 SAY 'MASTERCHIP COMPUTACION'
    @2,64 SAY 'FECHA: '+DTOC(FECHA)
    @3,28 SAY 'SISTEMA GENERAL DE STOCK'
    @4,28 TO 4,51 DOUBLE
    @7,35 SAY 'MENU BAJAS'
    @6,34 TO 6,45
    @8,34 TO 8,45
    SELECT 1
    @24,1 SAY 'CODIGO DE MERCADERIA = 0 PARA TERMINAR'
    @10,2 SAY 'Codigo de Mercaderia: 'GET vcod_merc PICTURE ç
'999999'
    READ
    IF VCOD_MERC = 0
        EXIT
    ENDIF
    SEEK VCOD_MERC
    IF EOF()
        @24,1
        @23,23 SAY 'Codigo Inexistente... Pulse una tecla'
        WAIT
        @23,0
        LOOP
    ELSE
        @12,2 SAY 'Descripcion: '+DESC
        SELECT 2
        @14,2 SAY 'Stock Actual: '+STR(S_ACTUAL)
        @15,2 SAY 'Stock Minimo: '+STR(S_MINIMO)
        SELECT 1
        @17,25 SAY 'Precio de Costo: '+STR(P_COSTO)
        @18,25 SAY '% Ganancia:      '+STR(GANANCIA)
        @19,25 SAY 'Neto:            '+STR(P_NETO)
        @20,25 SAY 'I.V.A.:          '+STR(IVA)
        @21,25 SAY 'Precio de Lista: '+STR(P_LISTA)
        @23,25 SAY 'CONFIRMA LA BAJA (S/N)?' GET SINO PICT '!'
        READ
        IF SINO ='S'
            DELETE
            LOOP
            @23,0
        ELSE
            LOOP
        ENDIF
    ENDIF
ENDDO
PACK
RETURN