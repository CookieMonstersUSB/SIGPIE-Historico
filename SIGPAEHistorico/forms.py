from django import forms
from django.forms import ModelForm, Form
from .validators import *
from .models import *
from django.forms import widgets
from django.forms.fields import ChoiceField

class UploadFileForm(ModelForm):
	""" Form para la carga de un archivo pdf e iniciar una nueva transcripcion """
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
    """ Form para editar una transcripción """
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
	""" Form para la consulta a la base de datos de SIGPAE """
    code = forms.CharField(min_length = 6, max_length = 6, label='Código de la materia')
    year = forms.IntegerField(label='Año del programa', validators=[validate_year])

class camposAddsForm(ModelForm):
	""" Form para los campos adicionales de una transcripción """
    class Meta:
        model = camposAdds
        exclude = ['docfk']
        widgets = {
            'nameAdd': forms.TextInput(attrs={'placeholder': 'Nombre del nuevo campo'}),
            'contentAdd': forms.Textarea(
                attrs={'placeholder': 'Contenido del nuevo campo'}),
        }
