from funciones import limpiar_pantalla
from funciones import obtener_tamano_terminal
from funciones import centrar_texto 

titulo= "# Programa Stock - DBase III Plus a Python\n\nPrograma de Control de Stock " \
"originalmente en 1995 utilizando DBase III Plus sobre DOS."

texto1=f"Este proyecto nació como una herramienta para administrar" \
f" ABM de productos, reposiciones, lista de precios, pedidos y consultas " \
f"en una época donde los programas de gestion de se ejecutaban no en la nube sino en discos rígidos locales."

texto2=f"El desarrollo comenzó sobre una PC XT equipada con un procesador NEC V20, 1 MB de RAM, disco rígido Seagate ST-238R de 60 MB, unidad de disquete de 5,25 pulgadas y monitor monocromático Hércules. El lenguaje elegido fue DBase III Plus, que fue mi puerta de entrada al mundo de las bases de datos y la programación."

texto3=f"Aprendí DBase III a partir de un libro prestado de biblioteca que conseguí gracias a mi tío Egidio. Como el libro debía devolverse y no podía fotocopiarse correctamente debido al tipo de impresión utilizado, fue necesario avanzar rápidamente y aprovechar al máximo el tiempo disponible para estudiar y programar."

texto4=f"Los archivos incluidos en este repositorio corresponden al código fuente original conservado desde aquella época. Se publican con fines educativos, históricos y de preservación informática, mostrando cómo se desarrollaban aplicaciones de gestión personal en computadoras domésticas de los años noventa."

texto5=f"Más que una simple ABM de productos, este proyecto es una pequeña cápsula del tiempo que refleja una etapa de aprendizaje, experimentación y pasión por la informática."

limpiar_pantalla()
ancho, alto = obtener_tamano_terminal()
titulo = centrar_texto(titulo, ancho)
texto1 = centrar_texto(texto1, ancho)
texto2 = centrar_texto(texto2, ancho)
texto3 = centrar_texto(texto3, ancho)
texto4 = centrar_texto(texto4, ancho)
texto5 = centrar_texto(texto5, ancho)

def menu_acerca():
    while True:
        print(titulo)
        print("\n")
        print(texto1)
        print("\n")
        print(texto2)
        print("\n")
        print(texto3)
        print("\n")
        print(texto4)
        print("\n")
        print(texto5)
        input("\n\nPresiona Enter para volver al menú principal...")
        break
