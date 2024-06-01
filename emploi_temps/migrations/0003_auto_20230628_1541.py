# Generated by Django 3.2.19 on 2023-06-28 14:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('emploi_temps', '0002_course_timetable'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='day',
            field=models.CharField(default='Lundi', max_length=100),
        ),
        migrations.AddField(
            model_name='course',
            name='end_time',
            field=models.TimeField(default='00:00'),
        ),
        migrations.AddField(
            model_name='course',
            name='field',
            field=models.CharField(default='Toute filières', max_length=100),
        ),
        migrations.AddField(
            model_name='course',
            name='group',
            field=models.CharField(default='Groupe 1', max_length=100),
        ),
        migrations.AddField(
            model_name='course',
            name='professor',
            field=models.CharField(default='M. ZOHOU', max_length=100),
        ),
        migrations.AddField(
            model_name='course',
            name='room',
            field=models.CharField(default='IRAN 2', max_length=100),
        ),
        migrations.AddField(
            model_name='course',
            name='start_time',
            field=models.TimeField(default='00:00'),
        ),
        migrations.DeleteModel(
            name='Timetable',
        ),
    ]