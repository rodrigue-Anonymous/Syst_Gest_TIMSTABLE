# Generated by Django 3.2.19 on 2023-06-19 20:55

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('emploi_temps', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Course',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('promotion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='emploi_temps.promotion')),
            ],
        ),
        migrations.CreateModel(
            name='Timetable',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('day', models.CharField(max_length=20)),
                ('time_start', models.TimeField()),
                ('time_end', models.TimeField()),
                ('room', models.CharField(max_length=50)),
                ('teacher', models.CharField(max_length=100)),
                ('group', models.CharField(max_length=50)),
                ('department', models.CharField(max_length=100)),
                ('course', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='emploi_temps.course')),
            ],
        ),
    ]
