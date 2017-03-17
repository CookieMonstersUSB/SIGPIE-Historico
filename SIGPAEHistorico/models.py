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
            ('2','División Ciencias Físicas y Matemáticas'),
            ('3','División Ciencias Sociales y Humanidades'),
            ('4','División Ciencias Biológicas'),
            ('5','División Ciencias y Tecnologías Administrativas e Industriales'),
        )


        DEP=(
            ('1','Física'),
            ('2','Química'),
            ('3','Mecánica'),
            ('4','Matemáticas Puras y Aplicadas'),
            ('5','Computo Científico y Estadística'),
            ('6','Electrónica y Circuitos'),
            ('7','Termodinámica y Fenómenos de Transferencia'),
            ('8','Conversión y Transporte de Energía'),
            ('9','Procesos y Sistemas'),
            ('10','Ciencias de los Materiales'),
            ('11','Ciencias de la Tierra'),
            ('12','Ciencia y Tecnología del Comportamiento'),
            ('13','Lengua y Literatura'),
            ('14','Ciencias Económicas y Administrativas'),
            ('15','Idiomas'),
            ('16','Filosofía'),
            ('17','Ciencias Sociales'),
            ('18','Arquitectura y Artes Plásticas'),
            ('19','Planificación Urbana'),
            ('20','Biología Celular'),
            ('21','Estudios Ambientales'),
            ('22','Biología de Organismos'),
            ('23','Tecnología de Procesos Biológicos y Bioquímicos'),
            ('24','Tecnología de Servicios'),
            ('25','Tecnología Industrial'),
            ('26','Formación General y Ciencias Básicas')
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
    year = models.IntegerField()

class camposAdds(models.Model):
    _DATABASE = 'default'
    docfk = models.ForeignKey(Document, on_delete=models.CASCADE)
    nameAdd = models.CharField(max_length = 50)
    contentAdd = models.TextField(default = "")
    
    class Meta:
        db_table = 'camposAdds'
        unique_together = (('docfk', 'nameAdd'))    

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
    planilla = models.IntegerField(db_column='idplanilla')
    programa = models.IntegerField(db_column='idprograma')

    class Meta:
        managed = False
        db_table = 'r_prog_pl'
        unique_together = (('planilla', 'programa'),)

class EsRequisito(models.Model):
    _DATABASE = 'gestionpae'
    codpre = models.CharField(max_length=6)
    cod = models.CharField(max_length=6)

    class Meta:
        managed = False
        db_table = 'es_requisito'
        unique_together = (('codpre', 'cod'),)
