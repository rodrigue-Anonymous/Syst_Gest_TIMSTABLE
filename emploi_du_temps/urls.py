from django.urls import path, include

# Importatio du l'admin
#from django.contrib import admin


urlpatterns = [
    #path('admin/', admin. site. urls),
    path('emploi_temps/', include('emploi_temps.urls'), name='emploi_temps'),
    
]

