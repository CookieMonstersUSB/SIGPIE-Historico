'''
Created on Feb 16, 2017

@author: Sergio
'''
# from wand.image import Image
# from PIL import Image as PI
# from pyocr import tesseract as tool
# import pyocr.builders
# import io
# import PyPDF2

# from urllib.request import urlopen
from pdfminer.pdfinterp import PDFResourceManager, PDFPageInterpreter
from pdfminer.converter import TextConverter, HTMLConverter
from pdfminer.layout import LAParams
from pdfminer.pdfpage import PDFPage
from io import StringIO, BytesIO
import io

PDF_LANG = 'eng'

# def LeerPDFimagenes(archivo) :
#
#     imagenes = []
#     texto_final = []
#
#     jpg = Image(file = archivo)
#
#     for i in jpg.sequence :
#         img_pag = Image(image=i)
#         imagenes.append(img_pag. make_blob('jpeg'))
#
#     for i in imagenes :
#         txt = tool.image_to_string (
#             PI.open(io.BytesIO(i)),
#             lang= PDF_LANG,
#             builder = pyocr.builders.TextBuilder()
#             )
#         texto_final.append(txt)
#
#     return '\n'.join(texto_final)
def LeerPDFaString(archivo):
    scrape = archivo
    pdfFiler = BytesIO(scrape.read())
    rsrcmgr = PDFResourceManager()
    retstr = StringIO()
    codec = 'utf-8'
    laparams = LAParams()
    device = TextConverter(rsrcmgr, retstr, codec=codec, laparams=laparams)

    interpreter = PDFPageInterpreter(rsrcmgr, device)
    password = ""
    maxpages = 0
    caching = True
    pagenos=set()
    for page in PDFPage.get_pages(pdfFiler, pagenos, maxpages=maxpages, password=password,caching=caching, check_extractable=True):
        interpreter.process_page(page)

    device.close()
    textstr = retstr.getvalue()
    retstr.close()
    return textstr

def leerPDFaHTML(stream):
    pagenums = set()
    manager = PDFResourceManager()
    codec = 'utf-8'
    caching = True
    output = io.BytesIO()
    converter = HTMLConverter(manager, output, codec=codec, laparams=LAParams())
    interpreter = PDFPageInterpreter(manager, converter)
    infile = open("SIGPAEHistorico/templates/SIGPAEHistorico/output.html", 'wb')
    for page in PDFPage.get_pages(stream, pagenums,caching=caching, check_extractable=True):
        interpreter.process_page(page)

    convertedPDF = output.getvalue()

    infile.write(convertedPDF)
    infile.close()
    converter.close()
    output.close()
    return convertedPDF
