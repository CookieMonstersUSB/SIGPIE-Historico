# SIGPAE

## Usando vagrant

### Instalacion

+ instalar virtualbox

+ instalar vagrant desde http://vagrantup.com
+ en windows recomiendo instalar cmder tambien, asi se tienen herramientas utiles para la ejecucion de vagrant

Desde la raiz del repositorio ejecutar el comando

`  vagrant up `

Durante la primera ejecucion se instalaran tanto la maquina virtual como las librerias


### Iniciar la maquina virtual

El comando siguiente inicia la maquina virtual, si es la primera ejecución se ejecutara el script de instalacion

` vagrant up`

Para acceder a la maquina virtual se usa el comando

` vagrant ssh`

Con esto accederas al shell de la maquina virtual

Luego para detenerla se debe salir de la consola ssh y usar el comando

` vagrant halt`

### Iniciar django

### Recargar archivos para django

### LLenando espacios

## Instalando depencias para usar sin vagrant

1. Instalar Python 3.4 . Si se esta en ubuntu y no se provee la version correcta puedes usar este tutorial
  http://www.tutorialspoint.com/articles/how-to-install-python-3-4-4-on-ubuntu

2. Instalar tesseract-ocr de google para leer una imagen y convertir en texto

	sudo apt-get install tesseract-ocr

3. Instalar wand para convertir los .pdf a imagenes

	sudo pip install wand // sudo pip3.4 install wand
	El pip depende de como instales librerias en tu python

4. Instalar PIL porque pyOCR lo necesita
Podria presentarse que necesites instalar Pillow, porque PIL este obsoleta

	sudo pip3.4 install PIL o sudo pip3.4 install Pillow
	El pip depende de como instales librerias en tu python

5. Instalr pyOCR, libreria de python para el uso de tesseract

	sudo pip3.4 install git+https://github.com/jflesch/pyocr.git

6. Instalar PyPDF2 para leer .pdf que no esten compuestos de imagenes

	sudo pip3.4 install PyPDF2 o sudo pip3.4 install PyPDF2
	El pip depende de como instales librerias en tu python
