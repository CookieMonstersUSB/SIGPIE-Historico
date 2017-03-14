from django.db import models
from .validators import validate_file_extension

# class ventana(models.Model):
#         text = models.TextField()

class Document(models.Model):
        _DATABASE = 'default'
        name = models.CharField(max_length = 50)
        docfile = models.FileField(validators=[validate_file_extension] , upload_to='static/uploads/pdf')
        doctext = models.TextField(default="")

class Consultapae(models.Model):
    _DATABASE = 'default'
    code = models.CharField(max_length = 6)
    year = models.IntegerField()

# Clases de modelo especificas para la conexion con SIGPAE
class Solicitud(models.Model):
    _DATABASE = 'gestionpae'
    nomcoord = models.CharField(max_length=50)
    porasignar = models.BooleanField()
    porvalidard = models.BooleanField()
    porrevisarp = models.BooleanField()
    rechazadoc = models.BooleanField()
    validadoc = models.BooleanField()
    enviadod = models.BooleanField()
    devueltodace = models.BooleanField()
    fechaelab = models.DateField()
    tipo_solicitud = models.CharField(max_length=20)
    subtipo_solicitud = models.CharField(max_length=30)
    nivel = models.CharField(max_length=20)
    cod = models.CharField(max_length=7)
    cod_anterior = models.CharField(max_length=7, blank=True, null=True)
    denominacion = models.CharField(max_length=70)
    creditos = models.DecimalField(max_digits=2, decimal_places=0)
    tipo_aula = models.CharField(max_length=20)
    hteoria = models.BooleanField()
    hpractica = models.BooleanField()
    hlab = models.BooleanField()
    trime = models.CharField(max_length=8)
    ano = models.CharField(max_length=4)
    accion = models.CharField(max_length=20)
    afecta_carrera = models.CharField(max_length=35)
    trimestrep = models.BooleanField()
    requisito_cre = models.BooleanField()
    permiso_coord = models.BooleanField()
    tipo_materia = models.CharField(max_length=20)
    clase_materia = models.CharField(max_length=25)
    observaciones = models.CharField(max_length=1000, blank=True, null=True)
    vigente = models.NullBooleanField()
    validadodace = models.BooleanField()
    especial = models.BooleanField()
    imparticion = models.CharField(max_length=15)
    usbidec = models.CharField(max_length=50, blank=True, null=True)
    obsanul = models.CharField(max_length=1000, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'solicitud'

class Programa(models.Model):
    _DATABASE = 'gestionpae'
    h_teoria = models.DecimalField(max_digits=2, decimal_places=0, blank=True, null=True)
    h_prac = models.DecimalField(max_digits=2, decimal_places=0, blank=True, null=True)
    h_lab = models.DecimalField(max_digits=2, decimal_places=0, blank=True, null=True)
    fecha_vigtrim = models.CharField(max_length=8, blank=True, null=True)
    fecha_vigano = models.IntegerField(blank=True, null=True)
    obj_g = models.CharField(max_length=1000, blank=True, null=True)
    obj_e = models.CharField(max_length=1000, blank=True, null=True)
    contenidos = models.CharField(max_length=1000, blank=True, null=True)
    estrategias = models.CharField(max_length=1000, blank=True, null=True)
    estrat_eval = models.CharField(max_length=1000, blank=True, null=True)
    fuentes = models.CharField(max_length=1000, blank=True, null=True)
    cronograma = models.CharField(max_length=1000, blank=True, null=True)
    sinoptico = models.CharField(max_length=1000, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'programa'

class RProgPl(models.Model):
    _DATABASE = 'gestionpae'
    idplanilla = models.IntegerField()
    idprograma = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'r_prog_pl'
        unique_together = (('idplanilla', 'idprograma'),)

class EsRequisito(models.Model):
    _DATABASE = 'gestionpae'
    codpre = models.CharField(max_length=6)
    cod = models.CharField(max_length=6)

    class Meta:
        managed = False
        db_table = 'es_requisito'
        unique_together = (('codpre', 'cod'),)
