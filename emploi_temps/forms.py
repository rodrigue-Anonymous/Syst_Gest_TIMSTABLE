from django.contrib.auth.models import User
from django import forms
from .models import EmploiDuTemps, EmploiDuTemps_l2, EmploiDuTemps_l3

class EmploiDuTempsForm(forms.ModelForm):
    class Meta:
        model = EmploiDuTemps
        fields = '__all__'

class EmploiDuTemps_l2Form(forms.ModelForm):
    class Meta:
        model = EmploiDuTemps_l2
        fields = '__all__'

class EmploiDuTemps_l3Form(forms.ModelForm):
    class Meta:
        model = EmploiDuTemps_l3
        fields = '__all__'        



class UserRegistrationForm(forms.Form):
    def use():
        username = forms.CharField(label='Nom d\'utilisateur', max_length=100)
        password = forms.CharField(label='Mot de passe', widget=forms.PasswordInput)
        confirm_password = forms.CharField(label='Confirmer le mot de passe', widget=forms.PasswordInput)
        email = forms.CharField(label='Email', widget=forms.EmailInput)
        user = User.objects.create_user(email=email,password=password, username=username)
        user.is_active = False
        return user


class UserLoginForm(forms.Form):
    username = forms.CharField(label='Nom d\'utilisateur', max_length=100)
    password = forms.CharField(label='Mot de passe', widget=forms.PasswordInput)


