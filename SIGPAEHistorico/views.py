from django.shortcuts import render_to_response
from django.views.generic.base import TemplateView
from django.template import RequestContext
from django.http import HttpResponseRedirect
from django.shortcuts import render
from .forms import UploadFileForm
from .models import Document
from ctypes.test.test_pickling import name
from django.core.urlresolvers import reverse
# Create your views here.

class hola(TemplateView):
    def get(self,request,*args,**kwargs):
        return render_to_response('SIGPAEHistorico/hola.html')

class upload(TemplateView):
    def post(self, request):
        form = UploadFileForm(request.POST , request.FILES)
        if form.is_valid():
            newDoc = Document(name = request.POST['name'] , docfile = request.FILES['docfile'])
            newDoc.save()
        
        return HttpResponseRedirect(reverse('Hola Mundo'))
    
    def get(self, request):
        form = UploadFileForm
        return render(
            request,
            'SIGPAEHistorico/upload.html',
            {'form' : form}
        )