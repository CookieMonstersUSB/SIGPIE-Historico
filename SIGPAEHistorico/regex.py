import re

def Regex(String):
	img=re.search('[A-Z]{3}[0-9]{3} | [a-z]{3}[0-9]{3} | [a-z]{2}[0-9]{4} | [A-Z]{2}[0-9]{4}',String)
    img2=re.search('[A-Z]{3}-[0-9]{3} | [a-z]{3}-[0-9]{3} | [a-z]{2}-[0-9]{4} | [A-Z]{2}-[0-9]{4}',String)
    img3=re.search('[A-Z]{3}\B[0-9]{3} | [a-z]{3}\B[0-9]{3} | [a-z]{2}\B[0-9]{4} | [A-Z]{2}\B[0-9]{4}',String)

	if img:
		return format(img.group(0))
    elif img2:
        return format(img2.group(0))
    elif img3:
        return format(img3.group(0))
    else:
        return None
