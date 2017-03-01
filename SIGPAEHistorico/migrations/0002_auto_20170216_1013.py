# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-02-16 14:13
from __future__ import unicode_literals

import SIGPAEHistorico.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('SIGPAEHistorico', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='document',
            name='doctext',
            field=models.TextField(default=''),
        ),
        migrations.AlterField(
            model_name='document',
            name='docfile',
            field=models.FileField(upload_to='static/uploads/', validators=[SIGPAEHistorico.validators.validate_file_extension]),
        ),
    ]
