from django.shortcuts import render_to_response
from django.views.generic.base import TemplateView
from django.template import RequestContext
# Create your views here.

class hola(TemplateView):
    def get(self,request,*args,**kwargs):
        return render_to_response('SIGPAEHistorico/hola.html',context_instance = RequestContext(request))