
# from urllib.request import urlopen
from pdfminer.pdfinterp import PDFResourceManager, PDFPageInterpreter
from pdfminer.converter import TextConverter, HTMLConverter
from pdfminer.layout import LAParams
from pdfminer.pdfpage import PDFPage
from io import StringIO, BytesIO
import io

# PDF_LANG = 'eng'

def LeerPDFaString(archivo):
    """ Función para extraer el texto de un archivo pdf. Se utiliza la libreria PDFMinerSix """
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

# def leerPDFaHTML(stream):
#     pagenums = set()
#     manager = PDFResourceManager()
#     codec = 'utf-8'
#     caching = True
#     output = io.BytesIO()
#     converter = HTMLConverter(manager, output, codec=codec, laparams=LAParams())
#     interpreter = PDFPageInterpreter(manager, converter)
#     infile = open("SIGPAEHistorico/templates/SIGPAEHistorico/output.html", 'wb')
#     for page in PDFPage.get_pages(stream, pagenums,caching=caching, check_extractable=True):
#         interpreter.process_page(page)
#
#     convertedPDF = output.getvalue()
#
#     infile.write(convertedPDF)
#     infile.close()
#     converter.close()
#     output.close()
#     return convertedPDF
