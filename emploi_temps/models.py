from django.db import models

class EmploiDuTemps(models.Model):
    jour = models.CharField(max_length=20)
    cours = models.CharField(max_length=200)
    heure = models.CharField(max_length=20)
    professeur = models.CharField(max_length=100)
    salle = models.CharField(max_length=50)
    groupe = models.CharField(max_length=50)
    masse_horaire = models.CharField(max_length=50)
    info = models.TextField(blank=True, default='-')

    def __str__(self):
        return self.jour

class EmploiDuTemps_l2(models.Model):
    jour = models.CharField(max_length=20)
    cours = models.CharField(max_length=200)
    heure = models.CharField(max_length=20)
    professeur = models.CharField(max_length=100)
    salle = models.CharField(max_length=50)
    groupe = models.CharField(max_length=50)
    masse_horaire = models.CharField(max_length=50)
    info = models.TextField(blank=True, default='-')

    def __str__(self):
        return self.jour

class EmploiDuTemps_l3(models.Model):
    jour = models.CharField(max_length=20)
    cours = models.CharField(max_length=200)
    heure = models.CharField(max_length=20)
    professeur = models.CharField(max_length=100)
    salle = models.CharField(max_length=50)
    groupe = models.CharField(max_length=50)
    masse_horaire = models.CharField(max_length=50)
    info = models.TextField(blank=True, default='-')

    def __str__(self):
        return self.jour        
