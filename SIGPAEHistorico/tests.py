from django.test import TestCase
from .regex import *

# Create your tests here.

class RegexTestCase(TestCase):
	def setUp(self):
		self.s = ''

	def test_pruebaDeRegex1(self):
		self.s = 'asdfaf LLA 113 asdfvf'
		respuesta = Regex(self.s)
		self.assertEqual(respuesta, 'LLA 113')
	def test_pruebaDeRegex2(self):
		self.s = 'asdfaf LL 1113 asdfvf'
		respuesta = Regex(self.s)
		self.assertEqual(respuesta, 'LL 1113')
	def test_pruebaDeRegex3(self):
		self.s = 'asdfaf ll 1113 asdfvf'
		respuesta = Regex(self.s)
		self.assertEqual(respuesta, 'll 1113')
	def test_pruebaDeRegex4(self):
		self.s = 'asdfaf lla 113 asdfvf'
		respuesta = Regex(self.s)
		self.assertEqual(respuesta, 'lla 113')

	def test_pruebaDeRegex5(self):
		self.s = 'asdfaf LLA-113 asdfvf'
		respuesta = Regex(self.s)
		self.assertEqual(respuesta, 'LLA-113')
	def test_pruebaDeRegex6(self):
		self.s = 'asdfaf LL-1113 asdfvf'
		respuesta = Regex(self.s)
		self.assertEqual(respuesta, 'LL-1113')
	def test_pruebaDeRegex7(self):
		self.s = 'asdfaf ll-1113 asdfvf'
		respuesta = Regex(self.s)
		self.assertEqual(respuesta, 'll-1113')
	def test_pruebaDeRegex8(self):
		self.s = 'asdfaf lla-113 asdfvf'
		respuesta = Regex(self.s)
		self.assertEqual(respuesta, 'lla-113')

	def test_pruebaDeRegex9(self):
		self.s = 'asdfaf LLA113 asdfvf'
		respuesta = Regex(self.s)
		self.assertEqual(respuesta, 'LLA113')
	def test_pruebaDeRegex10(self):
		self.s = 'asdfaf LL1113 asdfvf'
		respuesta = Regex(self.s)
		self.assertEqual(respuesta, 'LL1113')
	def test_pruebaDeRegex11(self):
		self.s = 'asdfaf ll1113 asdfvf'
		respuesta = Regex(self.s)
		self.assertEqual(respuesta, 'll1113')
	def test_pruebaDeRegex12(self):
		self.s = 'asdfaf lla113 asdfvf'
		respuesta = Regex(self.s)
		self.assertEqual(respuesta, 'lla113')

	def test_pruebaDeRegex13(self):
		self.s = 'sfgbhjnkojihb nemlrfkjn edmkwel,dkfrm edc ,lvfm mdc ,lvmkd kmk'
		respuesta = Regex(self.s)
		self.assertEqual(respuesta, '')
