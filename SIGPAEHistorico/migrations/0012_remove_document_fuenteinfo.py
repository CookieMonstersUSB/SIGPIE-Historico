# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-03-16 01:57
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('SIGPAEHistorico', '0011_auto_20170316_0137'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='document',
            name='FuenteInfo',
        ),
    ]
