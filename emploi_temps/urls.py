from django.urls import path
from .views import  admin_page,contact,ad_liste, home,emploi_du_temps,ajouter_emploi,modifier_emploi,supprimer_emploi,login_view, liste,register,emploi_du_temps_l2, ajouter_emploi_l2,modifier_emploi_l2,supprimer_emploi_l2,emploi_du_temps_l3, ajouter_emploi_l3,modifier_emploi_l3,supprimer_emploi_l3


#from django.contrib import admin

app_name = 'emploi_temps'

urlpatterns = [
    #path('admin/', admin. site. urls),
    path('admina/', admin_page, name='admin_page'),
    path('contact/', contact, name='contact'),
    path('ad_liste/', ad_liste, name='ad_liste'),
    path('', home, name='home'),
    path('login/', login_view, name='login'),
    path('liste/', liste, name='liste'),
    path('register/', register, name='register'),
    path('timetable/', emploi_du_temps, name='emploi_du_temps'),
    path('ajouter/', ajouter_emploi, name='ajouter_emploi'),
    path('modifier/<int:emploi_id>/', modifier_emploi, name='modifier_emploi'),
    path('supprimer/<int:emploi_id>/',supprimer_emploi, name='supprimer_emploi'),
    path('timetable_l2/', emploi_du_temps_l2, name='emploi_du_temps_l2'),
    path('ajouter_l2/', ajouter_emploi_l2, name='ajouter_emploi_l2'),
    path('modifier_l2/<int:emploi_id>/', modifier_emploi_l2, name='modifier_emploi_l2'),
    path('supprimer_l2/<int:emploi_id>/',supprimer_emploi_l2, name='supprimer_emploi_l2'),
    path('timetable_l3/', emploi_du_temps_l3, name='emploi_du_temps_l3'),
    path('ajouter_l3/', ajouter_emploi_l3, name='ajouter_emploi_l3'),
    path('modifier_l3/<int:emploi_id>/', modifier_emploi_l3, name='modifier_emploi_l3'),
    path('supprimer_l3/<int:emploi_id>/',supprimer_emploi_l3, name='supprimer_emploi_l3'),
    
]
    
