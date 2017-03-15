from django import forms
from django.forms import ModelForm, Form
from .validators import validate_file_extension

from .models import Document, Consultapae

class UploadFileForm(ModelForm):
    #name = forms.CharField(max_length = 50 , label = "Nombre del archivo")
    #docfile = forms.FileField(label="Selecciona un archivo" ,  validators=[validate_file_extension])
    class Meta:
        model = Document
        include = ['name', 'docfile']
        exclude = ['doctext']


class TextForm(ModelForm):
    """docstring for TextForm."""
    class Meta:
        model = Document
        exclude = ['name', 'docfile']
        widgets = []

class RequestForm(ModelForm):

    class Meta:
        model = Consultapae
        exclude = []

class ConsultaPaeForm(Form):
    code = forms.CharField(min_length = 6, max_length = 6, label='Código de la materia')
    year = forms.IntegerField(label='Año del programa')
