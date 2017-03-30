from django.conf.urls import url
from .views import *

# Se definen las direcciones para el direccionamiento a las diferentes vistas
urlpatterns = [
        url(r'^$', index.as_view(), name='index'),
        url(r'^upload/$', upload.as_view(), name ='upload'),
        url(r'^listar/$', listar.as_view(), name ='listar'),
        url(r'^editar/(?P<pkdoc>\d+)/$', editar.as_view(), name ='editar'),
        url(r'^consultarpae/$', consultarpae.as_view(), name ='consultarpae'),
        url(r'^mostrarpae/(?P<code>\w+)/(?P<year>\d+)$', mostrarpae.as_view(), name ='mostrarpae')
    ]
