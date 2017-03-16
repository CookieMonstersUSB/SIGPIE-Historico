from django.core.exceptions import ValidationError

def validate_file_extension(value):
    import os
    ext = os.path.splitext(value.name)[1]  # [0] returns path+filename
    valid_extensions = ['.pdf']
    if not ext.lower() in valid_extensions:
        raise ValidationError(u'Unsupported file extension.')

def validate_credits(value):
    if (value < 0 or value > 16):
        raise ValidationError(u'Creditos Inválidos')

def validate_year(value):
    if (value < 1969 or value > 2019):
        raise ValidationError(u'Año Inválido')

def validate_hours(value):
    if (value < 0 or value > 16):
        raise ValidationError(u'Hora Inválido')
