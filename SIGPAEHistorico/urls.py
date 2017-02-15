from django.conf.urls import url
from .views import hola
from .views import upload

urlpatterns = [
        url(r'^$', hola.as_view(), name='Hola Mundo'),
        url(r'^upload/$', upload.as_view(), name ='upload')
    ]