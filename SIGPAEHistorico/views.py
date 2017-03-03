from django.shortcuts import render_to_response
from django.views.generic.base import TemplateView
from django.template import RequestContext
from django.http import HttpResponseRedirect
from django.shortcuts import render
from .forms import UploadFileForm
from .models import Document
from ctypes.test.test_pickling import name
from django.core.urlresolvers import reverse
from .pdfReaders import LeerPDFaString
from .pdfReaders import leerPDFaHTML
# Create your views here.

class index(TemplateView):
    def get(self , request , *args , **kwargs):
        return render_to_response('SIGPAEHistorico/index.html')

class hola(TemplateView):
    def get(self,request,*args,**kwargs):
        docpk = Document.objects.last().pk
        return render(request , 'SIGPAEHistorico/editar.html' , {'docpk' : docpk})

class editar(TemplateView):
    def get(self,request,pkdoc):
        document = Document.objects.filter(pk__exact=pkdoc)[0]
        return render(request , 'SIGPAEHistorico/editar.html' , {'document' : document})

class editarHTML(TemplateView):
    def get(self,request,pkdoc):
        document = Document.objects.filter(pk__exact=pkdoc)[0]
        return render(request , 'SIGPAEHistorico/editarhtml.html' , {'document' : document})

class upload(TemplateView):
    def post(self, request):
        form = UploadFileForm(request.POST , request.FILES)
        pkdoc = ''
        if form.is_valid():
            text = ""
            if(request.POST['type'] == 'text'):
                text = LeerPDFaString(request.FILES['docfile'])
                newDoc = Document(name = request.POST['name'] , docfile = request.FILES['docfile'] , doctext = text)
                newDoc.save()
                pkdoc = newDoc.pk
                url = reverse('editar', kwargs={'pkdoc': pkdoc})
                return HttpResponseRedirect(url)
            else:
                text = leerPDFaHTML(request.FILES['docfile'])
                newDoc = Document(name = request.POST['name'] , docfile = request.FILES['docfile'] , doctext = text)
                newDoc.save()
                pkdoc = newDoc.pk
                url = reverse('editarhtml', kwargs={'pkdoc': pkdoc})                
                return HttpResponseRedirect(url)

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
