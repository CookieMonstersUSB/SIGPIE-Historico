from django.db import models
from .validators import *

class Document(models.Model):
        _DATABASE = 'default'
        EM = "sd"
        AJ = "em"
        SD = "aj"
        VE = "verano"
        ELECCION_PERIODO = (
            (SD, 'sep-dic'),
            (EM,'ene-mar'),
            (AJ, 'abr-jul'),
            (VE, 'verano'),
        )
        AREA_DEP =(
            ('---------'),
            ('División Ciencias Físicas y Matemáticas'),
            ('División Ciencias Sociales y Humanidades'),
            ('División Ciencias Biológicas'),
            ('División Ciencias y Tecnologías Administrativas e Industriales'),
        )

        DEP=(
            ('---------'),
            ('Física'),
            ('Química'),
            ('Mecánica'),
            ('Matemáticas Puras y Aplicadas'),
            ('Computo Científico y Estadística'),
            ('Electrónica y Circuitos'),
            ('Termodinámica y Fenómenos de Transferencia'),
            ('Conversión y Transporte de Energía'),
            ('Procesos y Sistemas'),
            ('Ciencias de los Materiales'),
            ('Ciencias de la Tierra'),
            ('Ciencia y Tecnología del Comportamiento'),
            ('Lengua y Literatura'),
            ('Ciencias Económicas y Administrativas'),
            ('Idiomas'),
            ('Filosofía'),
            ('Ciencias Sociales'),
            ('Arquitectura y Artes Plásticas'),
            ('Planificación Urbana'),
            ('Biología Celular'),
            ('Estudios Ambientales'),
            ('Biología de Organismos'),
            ('Tecnología de Procesos Biológicos y Bioquímicos'),
            ('Tecnología de Servicios'),
            ('Tecnología Industrial'),
            ('Formación General y Ciencias Básicas')
        )



        name = models.CharField(max_length = 50)
        docfile = models.FileField(validators=[validate_file_extension] , upload_to='static/uploads/pdf')
        doctext = models.TextField(default="", blank = True)
        codigo_programa = models.CharField(max_length = 8, default="", blank = True)
        creditos = models.IntegerField(default=0, validators=[validate_credits], null = True)
        tituloP = models.CharField(max_length = 60, default="", blank = True)
        fechaP = models.IntegerField(blank = True, validators=[validate_year], null = True)
        periodoP = models.CharField(max_length = 2, choices= ELECCION_PERIODO, default="", blank = True)
        h_teo = models.IntegerField(default=0, validators=[validate_hours], null = True, blank = True)
        h_prac = models.IntegerField(default=0, validators=[validate_hours],null = True, blank = True)
        h_lab = models.IntegerField(default=0, validators=[validate_hours],null = True, blank = True)
        Adepartamento = models.CharField(max_length=70, choices=AREA_DEP, default="", blank = True)
        departamento = models.CharField(max_length=70, choices=DEP, default="", blank = True)
        coordinacion = models.CharField(max_length=70, default="", blank = True)
        contSinop = models.TextField(default="", blank = True)
        FuenteInfo = models.TextField(default="", blank = True)
        objetivos = models.TextField(default="", blank = True)
        requisito = models.TextField(default="", blank = True)
        estrategias_meto = models.TextField(default="", blank = True)
        estrategias_eval = models.TextField(default="", blank = True)

class Consultapae(models.Model):
    _DATABASE = 'default'
    code = models.CharField(max_length = 6)
    year = models.IntegerField(default=2000)

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
