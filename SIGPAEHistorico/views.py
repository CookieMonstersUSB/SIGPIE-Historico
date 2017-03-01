from django.shortcuts import render_to_response
from django.views.generic.base import TemplateView
from django.template import RequestContext
from django.http import HttpResponseRedirect
from django.shortcuts import render
from .forms import UploadFileForm
from .models import Document
from ctypes.test.test_pickling import name
from django.core.urlresolvers import reverse
from .pdfReaders import leerPDFtexto
from .pdfReaders import LeerPDFimagenes
# Create your views here.

class index(TemplateView):
    def get(self , request , *args , **kwargs):
        return render_to_response('SIGPAEHistorico/index.html')

class hola(TemplateView):
    def get(self,request,*args,**kwargs):
        document = Document.objects.last()
        return render(request , 'SIGPAEHistorico/hola.html' , {'document' : document})

class editar(TemplateView):
    def get(self,request,*args,**kwargs):
        document = Document.objects.last()
        return render(request , 'SIGPAEHistorico/hola.html' , {'document' : document})

class upload(TemplateView):
    def post(self, request):
        form = UploadFileForm(request.POST , request.FILES)
        if form.is_valid():
            text = ""
            if(request.POST['type'] == 'text'):
                text = leerPDFtexto(request.FILES['docfile'])
                newDoc = Document(name = request.POST['name'] , docfile = request.FILES['docfile'] , doctext = text)
                newDoc.save()
            else:
                text = LeerPDFimagenes(request.FILES['docfile'])
                newDoc = Document(name = request.POST['name'] , docfile = request.FILES['docfile'] , doctext = text)
                newDoc.save()


        return HttpResponseRedirect(reverse('Hola Mundo'))

    def get(self, request):
        form = UploadFileForm
        return render(
            request,
            'SIGPAEHistorico/upload.html',
            {'form' : form}
        )

class listar(TemplateView):
    def get(self,request):
        files = Document.objects.exclude(docfile__isnull = True).exclude(docfile__exact='').exclude(doctext__isnull = True).exclude(doctext__exact='')
        context = {'files' : files}
        return render(request , 'SIGPAEHistorico/listar.html' , context)
