** Menu Principal **
SET TALK OFF
SET BELL OFF
SET SAFETY OFF
SET STATUS OFF
SET SCOREBOARD OFF
SET CONFIRM ON
SET EXCLUSIVE OFF
FECHA = DATE()
** Activar Tablas **
SELECT 1
USE STOCK INDEX ST_COD, ST_DESC
SELECT 2
USE ST_MIN INDEX ST_MIN
SELECT 3
USE REPONER INDEX REP_COD
** Relaciones **
SELECT 1
SET RELATION TO cod_merc INTO ST_MIN
SELECT 2
SET RELATION TO cod_merc INTO REPONER
** Seleccion **
DO WHILE .T.
    SELECT 1
    CLEAR
    STORE 9 TO OP
    @1,1 TO 22,78 DOUBLE
    @2,2 SAY "MASTERCHIP COMPUTACION"
    @2,63 SAY 'FECHA: '+DTOC(fecha)
    @3,28 SAY 'SISTEMA GENERAL DE STOCK'
    @4,28 TO 4,51 DOUBLE
    @7,33 SAY 'MENU PRINCIPAL'
    @6,32 TO 6,47
    @8,32 TO 8,47
    @10,15 SAY '[1]...Altas'
    @12,15 SAY '[2]...Bajas'
    @14,15 SAY '[3]...Modificar'
    @16,15 SAY '[4]...Reponer'
    @10,40 SAY '[5]...Lista de Precios'
    @12,40 SAY '[6]...Lista de Pedidos'
    @14,40 SAY '[7]...Consultas'
    @16,40 SAY '[8]...Retiro de Mercaderia'
    @18,33 SAY '[9]...Terminar'
    @19,2 SAY 'Seleccione una Opcion = ' GET op PICTURE '9'
    READ
    DO CASE
        CASE OP = 1
            DO SALTAS
        CASE OP = 2
            DO SBAJAS
        CASE OP = 3
            DO SMODIF
        CASE OP = 4
            DO SREPONER
        CASE OP = 5
            DO LIS_PRE
        CASE OP = 6
            DO LIS_PED
        CASE OP = 7
            DO SCONSUL
        CASE OP = 8
            DO SRETIRO
        CASE OP = 9
            EXIT
        OTHERWISE
            @23,18 SAY 'Opcion Incorrecta. Pulse una tecla.'
            WAIT
            @23,0
    ENDCASE
ENDDO
CLEAR ALL
RETURN