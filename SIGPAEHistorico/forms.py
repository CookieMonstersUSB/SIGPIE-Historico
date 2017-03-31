from django import forms
from django.forms import ModelForm, Form
from .validators import *
from .models import *
from django.forms import widgets
from django.forms.fields import ChoiceField

class UploadFileForm(ModelForm):
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
                'divisiones',
                'dependencias',
                'coordinacion',
                'contSinop',
                'FuenteInfo',
                'objetivos',
                'requisito',
                'estrategias_meto',
                'estrategias_eval']

class TextForm(ModelForm):
    """docstring for TextForm."""
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
    # periodoP = forms.ChoiceField(choices=ELECCION_PERIODO, widget=forms.RadioSelect(attrs={'class':'radio_1', 'name': 'name2'}))
    class Meta:
        model = Document
        exclude = ['name', 'docfile']

class ConsultaPaeForm(Form):
    code = forms.CharField(min_length = 6, max_length = 6, label='Código de la materia')
    year = forms.IntegerField(label='Año del programa', validators=[validate_year], required=False)

class camposAddsForm(ModelForm):
    class Meta:
        model = camposAdds
        exclude = ['docfk']
        widgets = {
            'nameAdd': forms.TextInput(attrs={'placeholder': 'Nombre del nuevo campo'}),
            'contentAdd': forms.Textarea(
                attrs={'placeholder': 'Contenido del nuevo campo'}),
        }

class fuenteDeInformacionForm(ModelForm):
    class Meta:
        model = fuenteDeInformacion
        exclude = ['fifk']
        widgets = {
            'titulo': forms.TextInput(attrs={'placeholder': 'Titulo'}),
            'subtitulo': forms.TextInput(attrs={'placeholder': 'Subtitulo'}),
            'autor': forms.TextInput(attrs={'placeholder': 'Nombre del autor'}),
            'notas': forms.TextInput(attrs={'placeholder': 'Notas Adicionales'}),
        }
