from presenta import presentacion
from funciones import limpiar_pantalla, aguardar, obtener_tamano_terminal, centrar_texto, say
from head import encabezado
''' from acerca import menu_acerca
from altas import menu_altas
from bajas import menu_bajas
from listado import menu_listado
from modificaciones import menu_modificaciones
from imprimir import menu_imprimir
from buscar import menu_buscar'''

# Llama a la función cuando necesites borrar la consola
limpiar_pantalla()
presentacion()
aguardar()
limpiar_pantalla()


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
        opcion = input("\n\nSelecciona una opción: ")
        if opcion == '1':
            # Alta de Contactos
            limpiar_pantalla()
            menu_altas()
            limpiar_pantalla()
        elif opcion == '2':
            # Baja de Contactos
            limpiar_pantalla()
            menu_bajas()
            limpiar_pantalla()
        elif opcion == '3':
            # Modificacion de Contactos
            limpiar_pantalla()
            print(f"Modificacion de Contactos")
            #en_construccion()
            menu_modificaciones()
            limpiar_pantalla()
        elif opcion == '4':
            # Listado Contactos
            limpiar_pantalla()
            menu_listado()
            limpiar_pantalla()
        elif opcion == '5':
            # Imprimir de Contactos
            limpiar_pantalla()
            menu_imprimir()
            limpiar_pantalla()
        elif opcion == '6':
            # Buscar Contactos
            print("Buscando Contactos...")
            # en_construccion()
            menu_buscar()
            limpiar_pantalla()
        elif opcion == '7':
            # Acerca de
            print("Acerca de este proyecto")
            limpiar_pantalla()
            menu_acerca()
            limpiar_pantalla()
        elif opcion == '9':
            print("Saliendo del programa...")
            limpiar_pantalla()
            break
        else:
            print("Opción no válida, por favor selecciona una opción del 0 al 7.")
            input("\nPresiona Enter para continuar...")
            limpiar_pantalla()

menu_principal()
