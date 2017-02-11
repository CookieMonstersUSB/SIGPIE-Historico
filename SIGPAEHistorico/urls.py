from django.conf.urls import url
from . import views

urlpatterns = [
        url(r'^$', views.hola, name='Hola Mundo')
    ]