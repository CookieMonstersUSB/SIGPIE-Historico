import re

def Regex(cadena):
    """ Función para extraer el código de una asignatura de un texto recibido. Se utilizan expresiones regulares """
    img=re.search('([A-Z][A-Z]|[a-z][a-z])-[0-9][0-9][0-9][0-9]',cadena)
    img2=re.search('([A-Z][A-Z][A-Z]|[a-z][a-z][a-z])-[0-9][0-9][0-9]',cadena)
    img3=re.search('([A-Z][A-Z]|[a-z][a-z])[0-9][0-9][0-9][0-9]',cadena)
    img4=re.search('([A-Z][A-Z][A-Z]|[a-z][a-z][a-z])[0-9][0-9][0-9]',cadena)
    img5=re.search('([A-Z][A-Z]|[a-z][a-z])\\s[0-9][0-9][0-9][0-9]',cadena)
    img6=re.search('([A-Z][A-Z][A-Z]|[a-z][a-z][a-z])\\s[0-9][0-9][0-9]',cadena)
    if img:
        return format(img.group(0))
    elif img2:
        return format(img2.group(0))
    elif img3:
        return format(img3.group(0))
    elif img4:
        return format(img4.group(0))
    elif img5:
        return format(img5.group(0))
    elif img6:
        return format(img6.group(0))
    else:
        return ""
