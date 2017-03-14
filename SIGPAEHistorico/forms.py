from django import forms
from django.forms import ModelForm
from .validators import validate_file_extension

from .models import Document, Consultapae

class UploadFileForm(ModelForm):
    #name = forms.CharField(max_length = 50 , label = "Nombre del archivo")
    #docfile = forms.FileField(label="Selecciona un archivo" ,  validators=[validate_file_extension])
    class Meta:
        model = Document
        exclude = ['doctext']


# class TextForm(forms.Form):
#     text = forms.CharField(label = "Texto del programa", widget=forms.Textarea())

class TextForm(ModelForm):
    """docstring for TextForm."""
    class Meta:
        model = Document
        exclude = ['name', 'docfile']

class RequestForm(ModelForm):

    class Meta:
        model = Consultapae
        exclude = []
