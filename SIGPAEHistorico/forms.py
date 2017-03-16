from django import forms
from django.forms import ModelForm, Form, ModelChoiceField
from .validators import validate_file_extension
from .models import Document, Divisiones
from django.forms import widgets
from django.forms.fields import ChoiceField

class UploadFileForm(ModelForm):
    #name = forms.CharField(max_length = 50 , label = "Nombre del archivo")
    #docfile = forms.FileField(label="Selecciona un archivo" ,  validators=[validate_file_extension])
    class Meta:
        model = Document
        exclude = ['doctext',
                'codigo_programa',
                'creditos',
                'tituloP',
                'fechaP',
                'periodoP',
                'h_teo',
                'h_prac',
                'h_lab',
                'departamento',
                'coordinacion',
                'contSinop',
                'FuenteInfo',
                'objetivos',
                'requisito',
                'estrategias_meto',
                'estrategias_eval']


# class TextForm(forms.Form):
#     text = forms.CharField(label = "Texto del programa", widget=forms.Textarea())

class TextForm(ModelForm):
    EM = "sd"
    AJ = "em"
    SD = "aj"
    VE = "ve"
    ELECCION_PERIODO = (
        (SD, 'sep-dic'),
        (EM,'ene-mar'),
        (AJ, 'abr-jul'),
        (VE, 'verano'),
    )
    periodoP = forms.ChoiceField(choices=ELECCION_PERIODO, widget=forms.RadioSelect(attrs={'class':'radio_1', 'name': 'name2'}))
    divisiones = ModelChoiceField(queryset=Divisiones.objects.all())
    class Meta:
        model = Document
        exclude = ['name', 'docfile']

'''class CodigoForm(ModelForm):
    """docstring for TextForm."""
    class Meta:
        model = Document
        exclude = []'''
        #'''include = ['codigo_programa']'''

class ConsultaPaeForm(Form):
    code = forms.CharField(min_length = 6, max_length = 6, label='Código de la materia')
    year = forms.IntegerField(label='Año del programa')
