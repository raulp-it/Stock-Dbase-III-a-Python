** Menu Altas **
DO WHILE .T.
    clear
    store 0 to vcod_merc, vs_act, vs_min, vp_costo, vgan, viva
    store space (30) to vdesc
    store space (1) to sino
    @1,1 to 22,78 double
    @2,2 say "MASTERCHIP COMPUTACION"
    @2,62 say 'FECHA: '+DTOC(FECHA)
    @3,28 say 'SISTEMA GENERAL DE STOCK'
    @4,28 to 4,51 double
    @7,33 say 'MENU INGRESOS'
    @6,32 TO 6,46
    @6,32 TO 8,46
    SELECT 1
        @24,1 SAY 'CODIGO MERCADERIA = 0 PARA TERMINAR'
        @10,2 SAY 'Codigo de Mercaderia: 'GET vcod_merc PICTURE ç
'999999'
        READ
        IF VCOD_MERC = 0
            EXIT
        ENDIF
        SEEK VCOD_MERC
        IF .NOT. EOF()
            @24,1 SAY 'Codigo Existente. Pulse una Tecla...'
            WAIT
            @23,0
            LOOP
        ELSE
            @12,2 SAY 'DESCRIPCION: 'GET VDESC PICT '@!'
            @14,2 SAY 'STOCK ACTUAL: 'GET VS_ACT PICTURE '999'
            @14,40 SAY 'STOCK MINIMO: 'GET VS_MIN PICT '999'
            READ
            IF VS_ACT < VS_MIN
                @24,1 SAY 'Stock Insuficiente... Pulse una Tecla'
                WAIT
                LOOP
            ELSE
                @16,2 SAY 'Precio Costo: ' GET vp_costo PICT '999999,99'
                @16,40 SAY '% Ganancia: ' GET vgan PICTURE '999.99'
                READ
                vp_neto = vp_costo * (1 + VGAN/100)
                @18,2 SAY '% I.V.A.: 'GET viva PICT '999,99'
                READ
                VP_LISTA = VP_NETO * (VIVA/100)+VP_NETO
                @18,50 SAY 'Precio de Lista: ' +LTRIM(STR(VP_LISTA,8,2))
                @23,54 SAY 'Datos Correctos(S/N)?' GET SINO PICTURE '!'
                READ
                @23,0
                @10,2 CLEAR TO 21,77
                IF SINO = 'S'
                    APPEND BLANK
                    REPLACE COD_MERC WITH VCOD_MERC, DESC WITH VDESC,ç
P_COSTO WITH VP_COSTO, GANANCIA WITH VGAN, P_NETO WITH VP_NETO,ç
IVA WITH VIVA, P_LISTA WITH VP_LISTA
                    SELECT 2
                    APPEND BLANK
                    REPLACE COD_MERC WITH VCOD_MERC
                    REPLACE S_ACTUAL WITH VS_ACT
                    REPLACE S_MINIMO WITH VS_MIN
                ELSE
                    LOOP
                ENDIF
            ENDIF
        ENDIF
    ENDDO
RETURN