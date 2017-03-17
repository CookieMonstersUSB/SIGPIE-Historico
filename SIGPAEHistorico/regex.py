import re

def Regex(cadena):
	img=re.search('[A-Z][A-Z]-[0-9][0-9][0-9][0-9]',cadena)
	img2=re.search('[A-Z][A-Z][A-Z]-[0-9][0-9][0-9][0-9]',cadena)
	img3=re.search('[A-Z][A-Z][0-9][0-9][0-9][0-9]',cadena)
	img4=re.search('[A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9]',cadena)
	img5=re.search('[A-Z][A-Z]\B[0-9][0-9][0-9][0-9]',cadena)
	img6=re.search('[A-Z][A-Z][A-Z]\B[0-9][0-9][0-9][0-9]',cadena)
	if img:
		print('1')
		return format(img.group(0))
	elif img2:
		print('2')
		return format(img2.group(0))
	elif img3:
		print('3')
		return format(img3.group(0))
	elif img4:
		print('4')
		return format(img4.group(0))
	elif img5:
		print('5')
		return format(img5.group(0))
	elif img6:
		print('6')
		return format(img6.group(0))
	else:
		return ""
