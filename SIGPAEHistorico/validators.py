from django.core.exceptions import ValidationError
from .regex import Regex

def validate_file_extension(value):
    import os
    ext = os.path.splitext(value.name)[1]
    valid_extensions = ['.pdf']
    if not ext.lower() in valid_extensions:
        raise ValidationError(u'<-- Extensión de archivo no soportada')

def validate_credits(value):
    if (value < 0 or value > 16):
        raise ValidationError(u'Credito Inválido')

def validate_year(value):
    if (value < 1969 or value > 2019):
        raise ValidationError(u'Año Inválido')

def validate_hours(value):
    if (value < 0 or value > 16):
        raise ValidationError(u'Hora Inválida')

def validate_code(value):
    if (Regex(value) == ""):
        raise ValidationError(u'Código Inválido')
		raise ValidationError(u'Código Inválido')
