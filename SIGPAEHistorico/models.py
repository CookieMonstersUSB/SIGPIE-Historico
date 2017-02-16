from django.db import models
from .validators import validate_file_extension

class ventana(models.Model):
        text = models.TextField()

class Document(models.Model):
        name = models.CharField(max_length = 50)
        docfile = models.FileField(validators=[validate_file_extension] , upload_to='static/uploads/')
        doctext = models.TextField(default="")


        