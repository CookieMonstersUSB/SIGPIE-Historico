# SIGPAE

### Iniciar django

La primera vez y cada vez que se agreguen librerias o se creen nuevos modelos se debe correr #./migrations.sh

Luego para arrancar el servidor usen ./runserver (esto por que tiene opciones para que se pueda acceder desde fuera)

### Instalando depencias 

1. Instalar Python 3.4 . Si se esta en ubuntu y no se provee la version correcta puedes usar este tutorial
  http://www.tutorialspoint.com/articles/how-to-install-python-3-4-4-on-ubuntu
  
 - O Intalar virtual env
 
 ### Getting python 3.4.4 para el virtualenv
 mkdir ~/src
 
 wget http://www.python.org/ftp/python/3.4.4/Python-3.4.4.tgz
 tar -zxvf Python-3.4.4.tgz
 
 cd Python-3.4.4
 
 mkdir ~/.localpython
 
 ./configure --prefix=$HOME/.localpython
 
 make
 
 make install
 
 ### Virtual env
 
 cd ~/src
 
 wget https://pypi.python.org/packages/5c/79/5dae7494b9f5ed061cff9a8ab8d6e1f02db352f3facf907d9eb614fb80e9/virtualenv-15.0.2.tar.gz#md5=0ed59863994daf1292827ffdbba80a63
 
 tar -zxvf virtualenv-15.0.2.tar.gz
 
 cd virtualenv-15.0.2/
 
 ~/.localpython/bin/python setup.py install
 
 virtualenv ve -p $HOME/.localpython/bin/python3.4
 
 source ve/bin/activate  
 
 - Se tendrá entonces una virtual env llamada ve en la cual se puede trabajar
 - Es importante notar que en este virtualenv debemos instalar las librerías necesarias

2. Instalar pdfminer.six
	https://github.com/pdfminer/pdfminer.six

	Seguir pasos 'How to install'
	
3. Tener en cuenta librería unipath requerida por Django/python, se puede instalar via pip

4. Tener instalado postgresql

5. Instalar Django vía pip
 
# NOTA!!!

si al hacer merge falla intenten

python3.4 manage.py makemigrations --merge

python3.4 manage.py makemigrations

python3.4 manage.py migrate

si da error de tabla no encontrada borren el archivo de mysql lite (db.sqlite3)

y vuelven a hacer todos los pasos anteriores.
