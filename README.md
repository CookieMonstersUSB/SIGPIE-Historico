# SIGPAE

Para correr SIGPAE correctamente es necesario cumplir con los siguientes requisitos:

  Alias a usar **python3** y **pip3**

  - [Python 3.4.4 o superior](#obtener-python-344)
  - [Django 1.10.6](#iniciar-en-django)
  - [PDFMinersix](#instalar-pdfminersix)
  - [Unipath](#unipath)
  - [Django_smart_selects](#smart-selects)
  - [PostgreSQL 9.6](#postgresql)
  - [psycopg2](#psycopg2)

### Obtener Python 3.4.4

Instalar Python 3.4. Si se esta en ubuntu y no se provee la version correcta puedes usar este tutorial
http://www.tutorialspoint.com/articles/how-to-install-python-3-4-4-on-ubuntu


  #### Ubuntu virtualenv Python3.4.4

Primero obtenemos el python3.4 con el que se creará el virtualenv

      mkdir ~/src

      wget http://www.python.org/ftp/python/3.4.4/Python-3.4.4.tgz

      tar -zxvf Python-3.4.4.tgz

      cd Python-3.4.4

      mkdir ~/.localpython

      ./configure --prefix=$HOME/.localpython

      make

      make install

Ahora se crea el virtualenv con python3.4

      cd ~/src

      wget https://pypi.python.org/packages/5c/79/5dae7494b9f5ed061cff9a8ab8d6e1f02db352f3facf907d9eb614fb80e9/virtualenv-15.0.2.tar.gz#md5=0ed59863994daf1292827ffdbba80a63

      tar -zxvf virtualenv-15.0.2.tar.gz

      cd virtualenv-15.0.2/

      ~/.localpython/bin/python setup.py install

      virtualenv ve -p $HOME/.localpython/bin/python3.4

      source ve/bin/activate  

  - Nótese que **ve** sería el nombre del nuevo virtualenv
  - Es importante notar que en este virtualenv debemos instalar las librerías necesarias

### Iniciar en django

Para instalar:

    pip3 install Django

  Depende del alias del pip para tu python

La primera vez y cada vez que se agreguen librerias o se creen nuevos modelos se deben correr:

    python3 manage.py makemigrations 
    
    python3 manage.py migrate

Luego para arrancar el servidor:

    python3 manage.py runserver

### Instalar pdfminersix

  Descargar en https://pypi.python.org/pypi/pdfminer.six/20160614

  Descomprimir, ubicarse en la carpeta y correr:

    python3 setup.py install

  Para más información: https://github.com/pdfminer/pdfminer.six
	
### Unipath
  
    pip3 install unipath

### Smart Selects

    pip3 install Django_smart_selects

### PostgreSQL
  
  Para instalar en caso de no tenerlo:

    sudo apt-get install postgresql postgresql-contrib

  [Importante](#base-de-datos)

  #### psycopg2
  Es necesario instalar la librería **psycopg2** para integrar con django:

    sudo -H pip3.4 install psycopg2


# NOTA!!!

si al hacer merge falla intenten

python3 manage.py makemigrations --merge

python3 manage.py makemigrations

python3 manage.py migrate


#### Base de datos

  Cuando se trabaja con PostgreSQL es necesario crear las Bases de datos, para esto nos conectamos a postgres:

    sudo -u postgres psql postgres

  Se crean las bases de datos necesarias:

    CREATE DATABASE admin;

    CREATE DATABASE gestionpae;

  Se crea el usuario Owner de las bases creadas, y se altera para funcionar con django:

    CREATE USER cmusb WITH PASSWORD 'admin';

    ALTER ROLE cmusb SET client_encoding TO 'utf8';

    ALTER ROLE cmusb SET default_transaction_isolation TO 'read committed';

    ALTER ROLE cmusb SET timezone TO 'UTC';

    GRANT ALL PRIVILEGES ON DATABASE admin TO cmusb;

    GRANT ALL PRIVILEGES ON DATABASE gestionpae TO cmusb;

  Finalmente nos conectamos a la base **gestionpae** y cambiar el usuario a **cmusb**:

    sudo -u postgres psql postgres  

    SET ROLE cmusb;

  Crear las tablas en el archivo SIGPAEschema.sql

  Opcional: Insertar datos en gestionpae con los archivos SIGPAEdatos.sql o SIGPAEdatos2.sql