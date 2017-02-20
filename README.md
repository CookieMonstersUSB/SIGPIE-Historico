Usando Vagrant

instalar virtualbox
instalar vagrant desde http://vagrantup.com

desde la raiz del repositorio ejecutar el comando

```
  vagrant up
```


1) Instalar tesseract-ocr de google para leer una imagen y convertir en texto

	sudo apt-get install tesseract-ocr

2) Instalar wand para convertir los .pdf a imagenes

	sudo pip install wand // sudo pip3.4 install wand
	El pip depende de como instales librerias en tu python

3) Instalar PIL porque pyOCR lo necesita
Podria presentarse que necesites instalar Pillow, porque PIL este obsoleta

	sudo pip3.4 install PIL o sudo pip3.4 install Pillow
	El pip depende de como instales librerias en tu python

4) Instalr pyOCR, libreria de python para el uso de tesseract

	sudo pip3.4 install git+https://github.com/jflesch/pyocr.git

5) Instalar PyPDF2 para leer .pdf que no esten compuestos de imagenes

	sudo pip3.4 install PyPDF2 o sudo pip3.4 install PyPDF2
	El pip depende de como instales librerias en tu python
