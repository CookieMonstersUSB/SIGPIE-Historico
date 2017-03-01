'''
Created on Feb 16, 2017

@author: Sergio
'''
from wand.image import Image
from PIL import Image as PI
from pyocr import tesseract as tool
import pyocr.builders
import io
import PyPDF2

PDF_LANG = 'eng'

def LeerPDFimagenes(archivo) :

    #lenguaje = tool.get_available_languages()[0]
    print(tool.get_available_languages())

    imagenes = []
    texto_final = []

    #pdf = Image(file=archivo, resolution=300)
    #jpg = pdf.convert('jpeg')
    #stream = archivo.open()
    jpg = Image(file = archivo)
    

    for i in jpg.sequence :
        print("aca")
        img_pag = Image(image=i)
        imagenes.append(img_pag. make_blob('jpeg'))
    
    for i in imagenes :
        print("aqui")
        txt = tool.image_to_string (
            PI.open(io.BytesIO(i)),
            lang= PDF_LANG,
            builder = pyocr.builders.TextBuilder()
            )
    
        
        texto_final.append(txt)
        

    return '\n'.join(texto_final)

def leerPDFtexto(stream):
    print(stream)
    pdfReader = PyPDF2.PdfFileReader(stream= stream)
    k = pdfReader.numPages
    text = ''
    for i in range (k):
        pagina = pdfReader.getPage(i)
        text += pagina.extractText()
    
    return text