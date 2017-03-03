from django.conf.urls import url
#from .views import hola
from .views import upload
from .views import index
from .views import listar
from .views import editar
from .views import editarHTML

urlpatterns = [
        url(r'^$', index.as_view(), name='index'),
        url(r'^upload/$', upload.as_view(), name ='upload'),
        url(r'^listar/$', listar.as_view(), name ='listar'),
        url(r'^editar/(?P<pkdoc>\d+)/$', editar.as_view(), name ='editar'),
        url(r'^editarhtml/(?P<pkdoc>\d+)/$', editarHTML.as_view(), name ='editarhtml')
    ]
