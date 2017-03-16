import re

def Regex(String):
	img=re.search('[A-Z]{2}([A-Z]|[1-9])[1-9]{3} | [a-z]{2}([a-z]|[1-9])[1-9]{3}',String)
    img2=re.search('[A-Z]{2}([A-Z]|[1-9])-[1-9]{3} | [a-z]{2}([a-z]|[1-9])-[1-9]{3}',String)
    img3=re.search('[A-Z]{2}([A-Z]|[1-9])\B[1-9]{3} | [a-z]{2}([a-z]|[1-9])\B[1-9]{3}',String)

	if img:
		return format(img.group(0))
    elif img2:
        return format(img2.group(0))
    elif img3:
        return format(img3.group(0))
    else:
        return None
