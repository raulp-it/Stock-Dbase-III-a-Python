DO WHILE .T.
    CLEAR
    STORE 0 TO VCOD_MERC, CANT
    DO ENCABEZ
    @7,33 SAY "MENU REPONER"
    SELECT 1
    @24,1 SAY 'CODIGO DE MERCADERIA = 0 PARA TERMINAR'
    @10,2 SAY 'Codigo de mercaderia: 'GET vcod_merc PICTURE ç
'999999'
    READ
    IF VCOD_MERC = 0
        EXIT
    ENDIF
    SEEK VCOD_MERC
    IF EOF()
        @24,1
        @23,23 SAY 'CODIGO INEXISTENTE...'
        WAIT 'Pulse cualquier tecla'
        @23,0
        LOOP
    ELSE
        SELECT 2
        STORE S_ACTUAL TO VS_ACT
        SELECT 1
        @12,2 SAY 'DESCRIPCION: '+DESC
        SELECT 2
        @14,2 SAY 'STOCK ACTUAL: '+LTRIM(STR(VS_ACT))
        @15,2 SAY 'STOCK MINIMO: '+LTRIM(STR(ST_MIN))
        @18,2 SAY 'Ingrese cantidad a reponer: 'GET cant PICTURE ç
'999'
        READ
        VS_ACT  = VS_ACT+CANT
        @24,1
        @23,5 SAY 'DATOS CORRECTOS (S/N)?' GET SINO PICT '!'
        READ
        @23,0
        @14,0
        IF SINO = 'S'
            REPLACE S_ACTUAL WITH VS_ACT
            @16,0
            @1,1 TO 22,78 DOUBLE
            SELECT 3
            DELETE
            PACK
            SELECT 2
            @14,2 SAY 'Stock Actualizado: ç
'+LTIM(STR(s_actual,8,0))
            WAIT''
            @23,0
        ELSE
            LOOP
        ENDIF
    ENDIF
ENDDO
RETURN