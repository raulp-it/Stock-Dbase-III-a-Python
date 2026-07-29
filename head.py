from funciones import obtener_tamano_terminal, centrar_texto, say
from datetime import datetime
from rich import print
from rich.panel import Panel
# print(Panel("Hola, mundo"))
fecha = datetime.now()
ancho, alto = obtener_tamano_terminal()
#separador = "=" 
titulo = "SISTEMA GENERAL DE STOCK v2.0"
titulo_centrado = centrar_texto(titulo, ancho)
dev = "SCPC Desarrollos"

def encabezado():    
    print(Panel(f"{titulo_centrado}"))    
    say(4, 5, f"{dev}")
    say(4, 60, f"Fecha: {fecha.strftime('%d/%m/%Y')}\n")