from django.shortcuts import render_to_response
from django.views.generic.base import TemplateView
from django.views.generic import ListView, CreateView, UpdateView, FormView
# from django.views.generic.edit import BaseFormView
from django.template import RequestContext
from django.http import HttpResponseRedirect
from django.shortcuts import render
from .forms import UploadFileForm, TextForm
from .models import Document

#from ctypes.test.test_pickling import name

from django.core.urlresolvers import reverse
from .pdfReaders import LeerPDFaString
# Create your views here.

class index(TemplateView):
    def get(self , request , *args , **kwargs):
        return render_to_response('SIGPAEHistorico/index.html')

class editar(UpdateView):
    context_object_name = 'textform'
    form_class = TextForm
    pk_url_kwarg = 'pkdoc'
    model = Document
    queryset = Document.objects.all()
    template_name = 'SIGPAEHistorico/editar.html'

    def get_context_data(self, **kwargs):
        """
        Insert the form into the context dict.
        """
        print(self.kwargs)
        document = Document.objects.filter(pk__exact=self.kwargs['pkdoc'])[0]
        kwargs['document'] = document
        kwargs['textform'] = self.get_form()
        return super(editar, self).get_context_data(**kwargs)

    def form_valid(self, form):
        """
        If the form is valid, save the associated model.
        """
        print('valido')
        self.object = form.save()
        self.success_url = reverse('index')
        return super(editar, self).form_valid(form)

class upload(CreateView):
    context_object_name = 'form'
    form_class = UploadFileForm
    model = Document
    queryset = Document.objects.name
    template_name = 'SIGPAEHistorico/upload.html'

    def form_valid(self, form):
        """
        If the form is valid, save the associated model.
        """
        self.object = form.save()
        text = LeerPDFaString(self.object.docfile)
        self.object.doctext = text
        self.object.save()
        self.success_url = reverse('editar', kwargs={'pkdoc':self.object.pk})
        return super(upload, self).form_valid(form)

class listar(ListView):
    context_object_name = 'files'
    model = Document
    queryset = Document.objects.all()
    template_name = 'SIGPAEHistorico/listar.html'
