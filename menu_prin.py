from funciones import limpiar_pantalla, obtener_tamano_terminal, centrar_texto, say, en_construccion
from head import encabezado
from acerca import menu_acerca
'''from altas import menu_altas
from bajas import menu_bajas
from listado import menu_listado
from modificaciones import menu_modificaciones
from imprimir import menu_imprimir
from buscar import menu_buscar'''


ancho, alto = obtener_tamano_terminal()
separador = "="
menu_principal_centrado = centrar_texto("** Menu Principal **", ancho)
def menu_principal():
    while True:        
        encabezado()
        print(separador*ancho)
        print("\n" + menu_principal_centrado)
        say(9, 5, "[1] Alta de Stock")
        say(11, 5, "[2] Baja de Stock")
        say(13, 5, "[3] Modificar Stock")
        say(15, 5, "[4] Reponer Stock")        
        say(9, 40, "[5] Lista de Precios")
        say(11, 40, "[6] Lista de Pedidos")
        say(13, 40, "[7] Consultas de Stock")
        say(15, 40, "[8] Retiro de Mercaderia")
        say(17, 28, "[9] Salir del Programa")
        say(19, 28, "[A] Acerca de") 
        opcion = input("\n\nSelecciona una opción: ")
        if opcion == '1':
            # Alta de Productos            
            en_construccion()
            #menu_altas()
            limpiar_pantalla()
        elif opcion == '2':
            # Baja de Productos            
            #menu_bajas()
            en_construccion()
            limpiar_pantalla()
        elif opcion == '3':
            # Modificacion de Productos
            en_construccion()
            #menu_modificaciones()
            limpiar_pantalla()
        elif opcion == '4':
            # Listado Productos            
            en_construccion()
            #menu_listado()
            limpiar_pantalla()
        elif opcion == '5':
            # Imprimir de Productos            
            #menu_imprimir()
            en_construccion()
            limpiar_pantalla()
        elif opcion == '6':
            # Lista de Precios
            print("Lista de Precios...")            
            en_construccion()            
            #lista_precios() 
            limpiar_pantalla()           
        elif opcion == '7':
            # Acerca de
            print("Consutas de Stock...")            
            en_construccion()
            limpiar_pantalla()
        elif opcion == '9':
            print("Saliendo del programa...")
            limpiar_pantalla()
            break
        elif opcion.upper() == 'A':
            # Acerca de
            limpiar_pantalla()
            menu_acerca()            
            limpiar_pantalla()
        else:
            print("Opción no válida, por favor selecciona una opción del 1 al 9 ó [A].")
            input("\nPresiona Enter para continuar...")
            limpiar_pantalla()

