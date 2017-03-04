from django import forms
from .validators import validate_file_extension

class UploadFileForm(forms.Form):
    name = forms.CharField(max_length = 50 , label = "Nombre del archivo")
    docfile = forms.FileField(label="Selecciona un archivo" ,  validators=[validate_file_extension])
