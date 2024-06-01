from django.shortcuts import render, redirect,  get_object_or_404
from django.contrib.auth import authenticate, login
from django.contrib.auth.decorators import  login_required
from django.contrib.auth.forms import PasswordResetForm
from django.contrib.auth.views import PasswordResetView, PasswordResetConfirmView
from django.contrib.messages.views import SuccessMessageMixin
from django.contrib import messages
from django.views import View
from django.contrib.auth.models import User
from .forms import UserLoginForm, UserRegistrationForm
from .models import EmploiDuTemps, EmploiDuTemps_l2, EmploiDuTemps_l3
from .forms import EmploiDuTempsForm, EmploiDuTemps_l2Form , EmploiDuTemps_l3Form 
from django.urls import reverse
from django.contrib.auth.hashers import check_password, make_password
from django.contrib.admin.views.decorators import staff_member_required




def admin_page(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        
        if username == 'DA_ifri' and password == 'ifri_ifri':
            # Connexion réussie
            return redirect('emploi_temps:ad_liste')
        else:
            # Identifiants invalides
            messages.error(request, 'Nom d\'utilisateur ou mot de passe incorrect')
            return redirect('emploi_temps:admin_page')
    
    return render(request, 'admin_page.html')


def login_view(request):
    form = UserLoginForm(request.POST)
    if request.method == 'POST':
        if form.is_valid():
            entered_username = form.cleaned_data['username']
            entered_password = form.cleaned_data['password']
            try:
                user = User.objects.get(username=entered_username)
                if check_password(entered_password, user.password):
                    request.session['user_id'] = user.id
                    return redirect(reverse('emploi_temps:liste'))
                else:
                    messages.error(request, 'Nom d\'utilisateur ou Mot de passe Incorrect')
                    return redirect(reverse('emploi_temps:login'))
            except User.DoesNotExist:
                messages.error(request, 'Invalid username or password.')
                return redirect(reverse('emploi_temps:login'))

    return render(request, 'login.html', {'form': form})


# les emplois du temps pour la l1
def emploi_du_temps(request):
    emplois = EmploiDuTemps.objects.all()
    return render(request, 'emploi_du_temps.html', {'emplois': emplois})

def ajouter_emploi(request):
    if request.method == 'POST':
        form = EmploiDuTempsForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('emploi_temps:emploi_du_temps')
    else:
        form = EmploiDuTempsForm()
    return render(request, 'ajouter_emploi.html', {'form': form})

def modifier_emploi(request, emploi_id):
    emploi = EmploiDuTemps.objects.get(id=emploi_id)
    if request.method == 'POST':
        form = EmploiDuTempsForm(request.POST, instance=emploi)
        if form.is_valid():
            form.save()
            return redirect('emploi_temps:emploi_du_temps')
    else:
        form = EmploiDuTempsForm(instance=emploi)
    return render(request, 'modifier_emploi.html', {'form': form, 'emploi': emploi})

def supprimer_emploi(request, emploi_id):
    emploi = EmploiDuTemps.objects.get(id=emploi_id)
    emploi.delete()
    return redirect('emploi_temps:emploi_du_temps')

 # les emplois du temps pour la l2
def emploi_du_temps_l2(request):
    emplois = EmploiDuTemps_l2.objects.all()
    return render(request, 'emploi_du_temps_l2.html', {'emplois': emplois})

def ajouter_emploi_l2(request):
    if request.method == 'POST':
        form = EmploiDuTemps_l2Form(request.POST)
        if form.is_valid():
            form.save()
            return redirect('emploi_temps:emploi_du_temps_l2')
    else:
        form = EmploiDuTemps_l2Form()
    return render(request, 'ajouter_emploi_l2.html', {'form': form})

def modifier_emploi_l2(request, emploi_id):
    emploi = EmploiDuTemps_l2.objects.get(id=emploi_id)
    if request.method == 'POST':
        form = EmploiDuTemps_l2Form(request.POST, instance=emploi)
        if form.is_valid():
            form.save()
            return redirect('emploi_temps:emploi_du_temps_l2')
    else:
        form = EmploiDuTemps_l2Form(instance=emploi)
    return render(request, 'modifier_emploi_l2.html', {'form': form, 'emploi': emploi})

def supprimer_emploi_l2(request, emploi_id):
    emploi = EmploiDuTemps_l2.objects.get(id=emploi_id)
    emploi.delete()
    return redirect('emploi_temps:emploi_du_temps_l2')


# les emplois du temps pour la l3
def emploi_du_temps_l3(request):
    emplois = EmploiDuTemps_l3.objects.all()
    return render(request, 'emploi_du_temps_l3.html', {'emplois': emplois})

def ajouter_emploi_l3(request):
    if request.method == 'POST':
        form = EmploiDuTemps_l3Form(request.POST)
        if form.is_valid():
            form.save()
            return redirect('emploi_temps:emploi_du_temps_l3')
    else:
        form = EmploiDuTemps_l3Form()
    return render(request, 'ajouter_emploi_l3.html', {'form': form})

def modifier_emploi_l3(request, emploi_id):
    emploi = EmploiDuTemps_l3.objects.get(id=emploi_id)
    if request.method == 'POST':
        form = EmploiDuTemps_l3Form(request.POST, instance=emploi)
        if form.is_valid():
            form.save()
            return redirect('emploi_temps:emploi_du_temps_l3')
    else:
        form = EmploiDuTemps_l3Form(instance=emploi)
    return render(request, 'modifier_emploi_l3.html', {'form': form, 'emploi': emploi})

def supprimer_emploi_l3(request, emploi_id):
    emploi = EmploiDuTemps_l3.objects.get(id=emploi_id)
    emploi.delete()
    return redirect('emploi_temps:emploi_du_temps_l3')    







def register(request):
    if request.method == 'POST':
        email = request.POST['email']
        username = request.POST['username']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        
        if username and email and password1:
            if password1 != password2:
                messages.error(request, "Les mots de passe ne correspondent pas.")
                return redirect('emploi_temps:register')
            elif len(password1) < 6:
                messages.error(request, "Le mot de passe doit contenir au moins six caractères.")
                return redirect('emploi_temps:register')
            
            try:
                existing_user = User.objects.get(email=email)
                messages.error(request, "L'email est déjà utilisé.")
                return redirect('emploi_temps:register')
            except User.DoesNotExist:
                user = User.objects.create_user(email=email, password=password1, username=username)
                user.is_active = False
                user.save()
                messages.success(request, "Votre compte a été créé avec succès. Vous pouvez maintenant vous connecter.")
                return redirect('emploi_temps:login')
        else:
            messages.error(request, "Veuillez remplir tous les champs.")
            return redirect('emploi_temps:register')

    return render(request, 'register.html')


def home(request):
    return render(request, 'home.html')


# Contact
def contact(request):
    return render(request, 'contact.html')

def liste(request):
    return render(request, 'liste.html')

def ad_liste(request):
    return render(request, 'ad_liste.html')




class CustomPasswordResetView(SuccessMessageMixin, PasswordResetView):
    template_name = 'password_reset.html'
    success_url = '/login/'
    success_message = "Un email de réinitialisation du mot de passe a été envoyé."

class CustomPasswordResetConfirmView(SuccessMessageMixin, PasswordResetConfirmView):
    template_name = 'password_reset_confirm.html'
    success_url = '/login/'
    success_message = "Le mot de passe a été réinitialisé avec succès."



