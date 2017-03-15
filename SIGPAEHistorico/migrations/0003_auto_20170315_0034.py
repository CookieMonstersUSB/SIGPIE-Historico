# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-03-15 00:34
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('SIGPAEHistorico', '0002_auto_20170314_1824'),
    ]

    operations = [
        migrations.AddField(
            model_name='document',
            name='FuenteInfo',
            field=models.TextField(default=''),
        ),
        migrations.AddField(
            model_name='document',
            name='codigo_programa',
            field=models.CharField(default='', max_length=8),
        ),
        migrations.AddField(
            model_name='document',
            name='contSinop',
            field=models.TextField(default=''),
        ),
        migrations.AddField(
            model_name='document',
            name='coordinacion',
            field=models.CharField(default='', max_length=70),
        ),
        migrations.AddField(
            model_name='document',
            name='creditos',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='document',
            name='departamento',
            field=models.CharField(default='', max_length=70),
        ),
        migrations.AddField(
            model_name='document',
            name='estrategias_eval',
            field=models.TextField(default=''),
        ),
        migrations.AddField(
            model_name='document',
            name='estrategias_meto',
            field=models.TextField(default=''),
        ),
        migrations.AddField(
            model_name='document',
            name='fechaP',
            field=models.IntegerField(default=2000),
        ),
        migrations.AddField(
            model_name='document',
            name='h_lab',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='document',
            name='h_prac',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='document',
            name='h_teo',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='document',
            name='objetivos',
            field=models.TextField(default=''),
        ),
        migrations.AddField(
            model_name='document',
            name='periodoP',
            field=models.CharField(choices=[('aj', 'sep-dic'), ('sd', 'ene-mar'), ('em', 'abr-jul'), ('verano', 'verano')], default='', max_length=2),
        ),
        migrations.AddField(
            model_name='document',
            name='requisito',
            field=models.TextField(default=''),
        ),
        migrations.AddField(
            model_name='document',
            name='tituloP',
            field=models.CharField(default='', max_length=60),
        ),
        migrations.AlterField(
            model_name='consultapae',
            name='year',
            field=models.IntegerField(default=2000),
        ),
    ]
