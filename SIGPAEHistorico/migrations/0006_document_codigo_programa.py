# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-03-14 21:39
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('SIGPAEHistorico', '0005_auto_20170314_2126'),
    ]

    operations = [
        migrations.AddField(
            model_name='document',
            name='codigo_programa',
            field=models.CharField(default=0, max_length=8),
            preserve_default=False,
        ),
    ]
