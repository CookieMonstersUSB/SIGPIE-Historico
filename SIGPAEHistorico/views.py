from django.shortcuts import render_to_response
from django.views.generic.base import TemplateView
from django.views.generic import ListView, CreateView, UpdateView, FormView, DetailView
from django.template import RequestContext
from django.http import HttpResponseRedirect
from django.shortcuts import render, get_object_or_404
from .forms import *
from .models import *
from django.core.urlresolvers import reverse, reverse_lazy
from .pdfReaders import LeerPDFaString
from .regex import Regex

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
        document = Document.objects.get(pk=self.kwargs['pkdoc'])
        kwargs['document'] = document
        kwargs['textform'] = self.get_form()
        kwargs['camposAddsForm'] = camposAddsForm()
        kwargs['camposAddsList'] = camposAdds.objects.filter(docfk=document.pk)
        return super(editar, self).get_context_data(**kwargs)

    def post(self, request, *args, **kwargs):
        #print('posteo')
        self.object = get_object_or_404(Document, pk=self.kwargs['pkdoc'])
        print(request.POST)
        textForm = TextForm(request.POST, instance=self.object)
        camposForm = camposAddsForm(request.POST)
        #print('posteo2')
        if textForm.is_valid():
            self.object = textForm.save(commit=False)
            if (self.object.divisiones_id == None):
                self.object.divisiones_id = Divisiones.objects.all().filter(id=0)[0]
            if (self.object.dependencias_id == None or self.object.divisiones_id == 0):
                self.object.dependencias_id = Dependencias.objects.all().filter(id=0)[0]
            self.object.save()
        else:
            return self.form_invalid(textForm)

        if camposForm.is_valid():
            campoNuevo = camposForm.save(commit=False)
            campoNuevo.docfk = self.object
            campoNuevo.save()
        else:
            return self.form_invalid(textForm)

        return HttpResponseRedirect(reverse_lazy('editar', kwargs={'pkdoc':self.object.pk}))


class upload(CreateView):
    context_object_name = 'form'
    form_class = UploadFileForm
    model = Document
    queryset = Document.objects.name
    template_name = 'SIGPAEHistorico/upload.html'

    def form_valid(self, form):
        self.object = form.save()
        text = LeerPDFaString(self.object.docfile)
        self.object.doctext = text
        self.object.codigo_programa = Regex(text)
        self.object.save()
        self.success_url = reverse('editar', kwargs={'pkdoc':self.object.pk})
        return super(upload, self).form_valid(form)

class listar(ListView):
    context_object_name = 'files'
    model = Document
    queryset = Document.objects.all()
    template_name = 'SIGPAEHistorico/listar.html'

class consultarpae(FormView):
    form_class = ConsultaPaeForm
    template_name = 'SIGPAEHistorico/consultarpae.html'

    def form_valid(self, form):
        self.success_url = reverse('mostrarpae', kwargs={'code': form.cleaned_data.get('code'),
                                                         'year': form.cleaned_data.get('year')})
        return super(consultarpae, self).form_valid(form)

class mostrarpae(TemplateView):
    def get(self , request , *args , **kwargs):
        context = self.get_context_data(**kwargs)
        return render_to_response('SIGPAEHistorico/mostrarpae.html', context)

    def get_context_data(self, **kwargs):
        lista_solicitud = Solicitud.objects.all().filter(cod__exact=self.kwargs['code']).filter(ano__lte=self.kwargs['year'])
        if (not lista_solicitud):
            print ('')
        else:
            solicitud = lista_solicitud[0]
            programa = Programa.objects.all().filter(pk__exact=solicitud.pk)[0]

            kwargs['solicitud'] = solicitud
            kwargs['programa'] = programa

        return super(mostrarpae, self).get_context_data(**kwargs)
