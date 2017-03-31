from django.core.exceptions import ValidationError
from .regex import Regex

def validate_file_extension(value):
	""" Validator para comprobar que un archivo tiene extension pdf """
	import os
	ext = os.path.splitext(value.name)[1]
	valid_extensions = ['.pdf']
	if not ext.lower() in valid_extensions:
		raise ValidationError(u'Extensión de archivo no soportada')

def validate_credits(value):
	""" Validator para comprobar que los creditos sean un número posible """
	if (value < 0 or value > 16):
		raise ValidationError(u'Creditos Inválidos')

def validate_year(value):
	""" Validator para comprobar que un año sea válido """
	if (value < 1969 or value > 2019):
		raise ValidationError(u'Año Inválido')

def validate_hours(value):
	""" Validator para comprobar que unas horas sean válidas """
	if (value < 0 or value > 16):
		raise ValidationError(u'Hora Inválido')

def validate_code(value):
	""" Validator para comprobar que un código de asignatura sea válido """
	if (Regex(value) == ""):
		raise ValidationError(u'Código Inválido')