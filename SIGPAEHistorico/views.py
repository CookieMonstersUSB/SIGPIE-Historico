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
    """ Controlador para vista inicial del sistema """
    def get(self , request , *args , **kwargs):
        return render_to_response('SIGPAEHistorico/index.html')

class editar(UpdateView):
    """ Controlador para la vista de edicion de una transcripcion """
    context_object_name = 'textform'
    form_class = TextForm
    second_form_class = camposAddsForm
    pk_url_kwarg = 'pkdoc'
    model = Document
    queryset = Document.objects.all()
    template_name = 'SIGPAEHistorico/editar.html'

    def get_context_data(self, **kwargs):
        """ Función para obtener las variables necesarias para la vista """
        context = super(editar, self).get_context_data(**kwargs)

        document = Document.objects.get(pk=self.kwargs['pkdoc'])
        second_model = camposAdds.objects.filter(docfk=document.pk)
        nuevoform = []
        if second_model:
            largo = len(second_model)
            for i in range(0, largo):
                nuevoform.append(camposAddsForm({'nameAdd':second_model[i].nameAdd,'contentAdd':second_model[i].contentAdd}))

        nuevoform.append(camposAddsForm())

        context['nuevoform'] = nuevoform
        context['document'] = document
        context['textform'] = self.get_form()

        return context

    def post(self, request, *args, **kwargs):
        """ Función para enviar la informacion recolectada en la vista """
        self.object = get_object_or_404(Document, pk=self.kwargs['pkdoc'])

        textForm = TextForm(request.POST, instance=self.object)
        camposForm = camposAddsForm(request.POST)

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
            verify1 = camposAdds.objects.filter(nameAdd=campoNuevo.nameAdd)
            verify2 = existeCampo.objects.filter(nombrecampo = campoNuevo.nameAdd)
            if (not verify1 and not verify2):
                campoNuevo.docfk = self.object
                campoNuevo.save()
            else:
                print("El campo especificado ya existe")
        else:
            return self.form_invalid(camposForm)

        return HttpResponseRedirect(reverse_lazy('editar', kwargs={'pkdoc':self.object.pk}))

        '''
        self.object = get_object_or_404(Document, pk=self.kwargs['pkdoc'])

        textForm = TextForm(request.POST, instance=self.object)
        camposForm = camposAddsForm(request.POST)

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
            verify = camposAdds.objects.filter(nameAdd=campoNuevo.nameAdd)
            if (not verify):
                campoNuevo.docfk = self.object
                campoNuevo.save()
            else:
                print("El campo expecificado ya existe")
        else:
            return self.form_invalid(textForm)

        return HttpResponseRedirect(reverse_lazy('editar', kwargs={'pkdoc':self.object.pk}))
'''

class upload(CreateView):
    """ Controlador para la vista de cargar una nueva transcripcion al sistema """
    context_object_name = 'form'
    form_class = UploadFileForm
    model = Document
    queryset = Document.objects.name
    template_name = 'SIGPAEHistorico/upload.html'

    def form_valid(self, form):
        """ Función para cargar la nueva transcripcion en el sistema instanciando una
        nueva transcripcion y subiendo el archivo pdf suministrado a la base de datos """
        self.object = form.save()
        #  Se extrae el texto del pdf suminstrado
        text = LeerPDFaString(self.object.docfile)
        self.object.doctext = text
        # Se extrae el codigo del texto extraido si existe y se elimina el espacio en blanco y el guion
        self.object.codigo_programa = Regex(text)
        self.object.codigo_programa = self.object.codigo_programa.replace(' ','')
        self.object.codigo_programa = self.object.codigo_programa.replace('-','')
        if (not self.object.codigo_programa in [None,'']):
            # Si se extrajo un codigo de programa se obtienen las siglas del codigo y se busca en la
            # base de datos la dependencia que tenga esas siglas y se asigna a la transcripcion
            siglas = self.object.codigo_programa[:2]
            dependencia = Dependencias.objects.all().filter(siglas__exact=siglas)[0]
            if (dependencia):
                # Si existe una transcripcion que tenga las siglas extraidas se le asigna a la nueva
                # transcripcion y tambien se le asigna la division correspondiente a dicha dependencia
                self.object.divisiones = dependencia.division
                self.object.dependencias = dependencia
        else:
            d = Dependencias.objects.all().filter(id__exact=0)[0]
            self.object.dependencia = 0
        self.object.save()
        # Se redirige a la vista correspondiente a la edicion de transcripcion
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
        if (form.cleaned_data.get('year') != None):
                self.success_url = reverse('mostrarpae', kwargs={'code': form.cleaned_data.get('code'),
                                                             'year': form.cleaned_data.get('year')})
        else:
            self.success_url = reverse('mostrarpae', kwargs={'code': form.cleaned_data.get('code')})
        return super(consultarpae, self).form_valid(form)

class mostrarpae(TemplateView):
    def get(self , request , *args , **kwargs):
        context = self.get_context_data(**kwargs)
        return render_to_response('SIGPAEHistorico/mostrarpae.html', context)

    def get_context_data(self, **kwargs):
        try:
            lista_solicitud = Solicitud.objects.all().filter(cod__exact=self.kwargs['code']).filter(ano__lte=self.kwargs['year'])
            if (not lista_solicitud):
                pass
            else:
                solicitud = lista_solicitud[0]
                lista_programa = Programa.objects.all().filter(pk__exact=solicitud.pk)[0]
                kwargs['solicitud'] = solicitud
                kwargs['programa'] = lista_programa

        except KeyError:
            lista_solicitud = Solicitud.objects.all().filter(cod__exact=self.kwargs['code'])
            if (not lista_solicitud):
                pass
            else:
                lista_programa = []
                for l in lista_solicitud:
                    lista_programa.append(Programa.objects.all().filter(pk__exact=l.pk)[0])
                kwargs['solicitudes'] = lista_solicitud
                kwargs['programas'] = lista_programa

        return super(mostrarpae, self).get_context_data(**kwargs)
