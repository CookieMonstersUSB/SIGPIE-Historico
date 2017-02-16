from django.conf.urls import url
from .views import hola
from .views import upload
from .views import index

urlpatterns = [
        url(r'^$', index.as_view(), name='index'),
        url(r'^editor/$', hola.as_view(), name='Hola Mundo'),
        url(r'^upload/$', upload.as_view(), name ='upload')
    ]