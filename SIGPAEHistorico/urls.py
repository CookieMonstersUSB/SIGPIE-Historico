from django.conf.urls import url
from .views import hola

urlpatterns = [
        url(r'^$', hola.as_view(), name='Hola Mundo')
    ]