from django import forms
from django.forms import ModelForm
from .validators import validate_file_extension
from .models import Document
from django.forms import widgets

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
class codigo(ModelForm):
    class meta:
        model = Document
        field = ('codigo_programa')
        widget = {'codigo_programa': widgets.Select(attrs= {'class': 'codigo'}),}

class TextForm(ModelForm):
    """docstring for TextForm."""
    class Meta:
        model = Document
        exclude = ['name', 'docfile']
        widget = {'doctext': widgets.Select(attrs={'class': 'textbox',
                                                   'col': 10,
                                                   'row': 500 })}

class CodigoForm(ModelForm):
    """docstring for TextForm."""
    class Meta:
        model = Document
        exclude = []
        include = ['codigo_programa']
