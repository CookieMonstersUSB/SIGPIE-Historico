from django import forms
from .validators import validate_file_extension

PDF_CHOICES = (('text' , 'PDF de texto'),('image' , 'PDF de imagenes'))

class UploadFileForm(forms.Form):
    name = forms.CharField(max_length = 50 , label = "Nombre del archivo")
    docfile = forms.FileField(label="Selecciona un archivo" ,  validators=[validate_file_extension]) 
    type = forms.ChoiceField(widget = forms.RadioSelect , choices=PDF_CHOICES)