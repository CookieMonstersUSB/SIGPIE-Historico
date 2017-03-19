-- ESTUDIANTES --
INSERT INTO USUARIO VALUES('09-10264','123','Miguel Fagundez','09-10264@ldc.usb.ve','Estudiante');
INSERT INTO USUARIO VALUES('09-10241','123','Hector Dominguez','09-10241@ldc.usb.ve','Estudiante');
INSERT INTO USUARIO VALUES('09-10816','123','Marielby Soares','09-10816@ldc.usb.ve','Estudiante');
INSERT INTO USUARIO VALUES('09-10814','123','Solange Silva','09-10814@ldc.usb.ve','Estudiante');
INSERT INTO ESTUDIANTE VALUES('09-10264','19693277','0');
INSERT INTO ESTUDIANTE VALUES('09-10241','19693278','1');
INSERT INTO ESTUDIANTE VALUES('09-10816','19693279','0');
INSERT INTO ESTUDIANTE VALUES('09-10814','19693276','3');

-- DEPARTAMENTOS --
INSERT INTO USUARIO VALUES('dep-ci','123','Departamento de Computación y Tecnología de la Información','dep-ci@usb.ve','Departamento');
INSERT INTO USUARIO VALUES('dep-bc','123','Departamento de Biologia Celular','dep-bc@usb.ve','Departamento');
INSERT INTO USUARIO VALUES('dep-qm','123','Departamento de Química','dep-qm@usb.ve','Departamento');
INSERT INTO USUARIO VALUES('dep-ft','123','Departamento de Termodinámica y Fenómenos de Transferencia','dep-ft@usb.ve','Departamento');
INSERT INTO USUARIO VALUES('dep-ps','123','Departamento de Procesos y Sistemas','dep-ps@usb.ve','Departamento');
INSERT INTO USUARIO VALUES('dep-ma','123','Departamento de Matemáticas Puras y Aplicadas','dep-ma@usb.ve','Departamento');
INSERT INTO DEPARTAMENTO VALUES('dep-ps');
INSERT INTO DEPARTAMENTO VALUES('dep-ft');
INSERT INTO DEPARTAMENTO VALUES('dep-qm');
INSERT INTO DEPARTAMENTO VALUES('dep-ci');
INSERT INTO DEPARTAMENTO VALUES('dep-bc');
INSERT INTO DEPARTAMENTO VALUES('dep-ma');

-- COORDINACIONES -- 
INSERT INTO USUARIO VALUES('coord-comp','123','Coordinación de Computación','coord-usb@usb.ve','Coordinacion');
INSERT INTO USUARIO VALUES('coord-electronica','123','Coordinación de Ingeniería Electrónica','coord-electronica@usb.ve','Coordinacion');
INSERT INTO USUARIO VALUES('coord-arq','123','Coordinación de Arquitectura','coord-arq@usb.ve','Coordinacion');
INSERT INTO USUARIO VALUES('coord-mt','123','Coordinación de Ingeniería de Materiales','coord-mt@usb.ve','Coordinacion');
INSERT INTO USUARIO VALUES('coord-iq','123','Coordinación de Ingeniería de Química','coord-iq@usb.ve','Coordinacion');
INSERT INTO USUARIO VALUES('coord-ma','123','Coordinación de Matemáticas','coord-ma@usb.ve','Coordinacion');
INSERT INTO COORDINACION VALUES('coord-iq','0300');
INSERT INTO COORDINACION VALUES('coord-mt','1500');
INSERT INTO COORDINACION VALUES('coord-comp','0800');
INSERT INTO COORDINACION VALUES('coord-electronica','0600');
INSERT INTO COORDINACION VALUES('coord-arq','0700');
INSERT INTO COORDINACION VALUES('coord-ma','1900');

-- PROFESORES --
-- Profesores del departamento de computacion
INSERT INTO USUARIO VALUES('abianc','123','Adelaide Bianchini','abianc@usb.ve','Profesor');
INSERT INTO USUARIO VALUES('mvidal','123','María Esther Vidal','mvidal@usb.ve','Profesor');
INSERT INTO USUARIO VALUES('yudith','123','Yudith Cardinale','09-10816@usb.ve','Profesor'); -- Para prueba de correo miguel
INSERT INTO USUARIO VALUES('figueira','123','Carlos Figueira','miguelef91@gmail.com','Profesor'); -- Para prueba de correo marielby
INSERT INTO USUARIO VALUES('mgoncalves','123','Marlene Goncalves','mgoncalves@ldc.usb.ve','Profesor');
INSERT INTO USUARIO VALUES('xiomara','123','Xiomara Contreras','xiomara@ldc.usb.ve','Profesor');
INSERT INTO PROFESOR VALUES('abianc');
INSERT INTO PROFESOR VALUES('mvidal');
INSERT INTO PROFESOR VALUES('yudith');
INSERT INTO PROFESOR VALUES('figueira');
INSERT INTO PROFESOR VALUES('mgoncalves');
INSERT INTO PROFESOR VALUES('xiomara');
-- Profesores del departamento de Biologia
INSERT INTO USUARIO VALUES('dajami','123','Diana Ajami','dajami@usb.ve','Profesor');
INSERT INTO USUARIO VALUES('jbubis','123','José Bubis','jbubis@usb.ve','Profesor');
INSERT INTO USUARIO VALUES('calaboki','123','Maritza Calabokis','calaboki@usb.ve','Profesor');
INSERT INTO PROFESOR VALUES('calaboki');
INSERT INTO PROFESOR VALUES('dajami');
INSERT INTO PROFESOR VALUES('jbubis');
-- Profesores del departamento de Matematicas
INSERT INTO USUARIO VALUES('cantonini','123','Claudia Antonini','cantonini@usb.ve','Profesor');
INSERT INTO PROFESOR VALUES('cantonini');

-- DACE --
INSERT INTO USUARIO VALUES('lpires','123','Lucy Pires','lpires@usb.ve','Dace');

-- DECANATO --
INSERT INTO USUARIO VALUES('dec-ep','123','Decanato de Estudios Profesionales','dec-ep@usb.ve','Decanato');
INSERT INTO DECANATO VALUES('dec-ep',true);
INSERT INTO USUARIO VALUES('decagene','123','Decanato de Estudios Generales','decagene@usb.ve','Decanato');
INSERT INTO DECANATO VALUES('decagene',false);
INSERT INTO USUARIO VALUES('dpost','123','Decanato de Estudios de Postgrado','dpost@usb.ve','Decanato');
INSERT INTO DECANATO VALUES('dpost',false);
------------------------------------------ FIN DE USUARIOS -------------------------------------------------------

-- Unir a los profesores con sus departamentos
INSERT INTO R_Prof_Dep VALUES('abianc','dep-ci');
INSERT INTO R_Prof_Dep VALUES('mvidal','dep-ci');
INSERT INTO R_Prof_Dep VALUES('yudith','dep-ci');
INSERT INTO R_Prof_Dep VALUES('figueira','dep-ci');
INSERT INTO R_Prof_Dep VALUES('mgoncalves','dep-ci');
INSERT INTO R_Prof_Dep VALUES('xiomara','dep-ci');
INSERT INTO R_Prof_Dep VALUES('dajami','dep-bc');
INSERT INTO R_Prof_Dep VALUES('jbubis','dep-bc');
INSERT INTO R_Prof_Dep VALUES('calaboki','dep-bc');
INSERT INTO R_Prof_Dep VALUES('cantonini','dep-ma');

-- Inserto carreras
INSERT INTO CARRERA VALUES('0800','Ingeniería de Computación');
INSERT INTO CARRERA VALUES('0600','Ingeniería Electrónica');
INSERT INTO CARRERA VALUES('1500','Ingeniería de Materiales');
INSERT INTO CARRERA VALUES('0400','Licenciatura en Química');
INSERT INTO CARRERA VALUES('0700','Arquitectura');
INSERT INTO CARRERA VALUES('0300','Ingeniería Química');
INSERT INTO CARRERA VALUES('1900','Licenciatura en Biología');

-- Asignaturas

INSERT INTO ASIGNATURA VALUES ('CI2511','LOGICA SIMBOLICA','Normal'); 
INSERT INTO ASIGNATURA VALUES ('CI2521','ESTRUCTURAS DISCRETAS I','Normal'); 
--INSERT INTO ASIGNATURA VALUES ('CI2522','Estructuras Discretas II','Normal');
--INSERT INTO ASIGNATURA VALUES ('CI2523','Estructuras Discretas III','Normal');
INSERT INTO ASIGNATURA VALUES ('CI2611','ALGORITMOS Y ESTRUCTURAS I','Normal');
--INSERT INTO ASIGNATURA VALUES ('CI2612','Algoritmos Y Estructuras II','Normal');
--INSERT INTO ASIGNATURA VALUES ('CI2613','Algoritmos Y Estructuras III','Normal');
--INSERT INTO ASIGNATURA VALUES ('CI3725','Traductores E Interpretadores','Normal');
--INSERT INTO ASIGNATURA VALUES ('CI3641','Lenguajes De Programacion','Normal');
--INSERT INTO ASIGNATURA VALUES ('CI4325','Interfaces Con El Usuario','Normal');
INSERT INTO ASIGNATURA VALUES ('EC5804','TÓPICOS ESPECIALES EN ROBÓTICA','Especial');


INSERT INTO R_CAR_MAT VALUES('CI2511','0800');
INSERT INTO R_CAR_MAT VALUES('CI2521','0800'); 
--INSERT INTO R_CAR_MAT VALUES('CI2522','0800'); 
--INSERT INTO R_CAR_MAT VALUES('CI2523','0800'); 
INSERT INTO R_CAR_MAT VALUES('CI2611','0800');  
--INSERT INTO R_CAR_MAT VALUES('CI2612','0800');
--INSERT INTO R_CAR_MAT VALUES('CI2613','0800'); 
--INSERT INTO R_CAR_MAT VALUES('CI3725','0800'); 
--INSERT INTO R_CAR_MAT VALUES('CI3641','0800'); 
--INSERT INTO R_CAR_MAT VALUES('CI4325','0800');  

--INSERT INTO R_CAR_MAT VALUES('CI2691','0800'); 
--INSERT INTO R_CAR_MAT VALUES('CI2125','0800'); --Materia compartida
--INSERT INTO R_CAR_MAT VALUES('CI2125','0600'); --Materia compartida
INSERT INTO R_CAR_MAT VALUES('CI2611','0600'); -- Materia compartida
INSERT INTO R_CAR_MAT VALUES('EC5804','0800'); --Materia especial

----------------------------------------- FIN DE CARRERAS-ASIGNATURAS-DEPARTAMENTOS -------------------------------------


-- PROGRAMA 1 Logica Simbolica-------------------------------------------------------------------------------------------
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('2','2','2','Sep-Dic','1995',
'Introducir al estudiante en los sistemas formales de modelización del razonamiento.',
'Desarrollar en el estudiante la capacidad de abstraer un problema a través de su formulación en lógica de primer orden.
Introducir el uso de la lógica como disciplina del razonamiento.
Introducir al estudiante en las pruebas inductivas.',
'-Motivación, historia, sistemas formales.(2 horas)
-Definiciones inductivas. Definiciones recursivas. Demostraciones inductivas.(4 horas)
-Lenguaje de la lógica del primer orden: constantes, relaciones, funciones y variables. Conectores lógicos usuales: disyunción conjunción, negación, condicional y bicondicional.(2 horas)
-Modelación de discursos proposicionales: evaluaciones, tabla de la verdad, satisfactibilidad, tautologías, consecuencia lógica y equivalencias lógicas.(6 horas)
-Sistema formal de la lógica proposicional: reglas de inferencia, derivaciones sintácticas, teoremas.(2 horas)
-Consistencia, solidez y completitud de lógica proposicional.(2 horas)
-Variable y cuantificadores: alcance de cuantificadores, ligaduras de variables, sentencias lógicas.(2 horas)
-Modelación de discursos predicativos (de primero orden). (4 horas)
-Semántica de lógica predicativos: interpretaciones y modelos, satisfactibilidad, tautologías, consecuencia lógica y equivalencias lógicas.(6 horas)',
'Estrategias del curso CI2511 ',
'Se recomiendan tres evaluaciones de porcentajes entre 25 a 40%',
'The Lenguage of Frist Order Logic  (Tarski World) de Barkwise
­ Guías “Introducción a la Lógica Matemática” “Introductión a la Lógica de Primer Orden”',
'1. Presentación. Planificación. Introducción. Sustitución textual e Igualdades (Cap. 1) Regla de Leibniz. Expresiones Booleanas   
2. Expresiones Booleanas (cont.). Modelación Proposicional (Cap. 3). Equivalencia y true. Negación, desigualdad y false
3. Disyunción (Cap. 3) Ejercicios adicionales de Modelación Conjunción (Cap.3)
4. Implicación (Cap. 3) 
5. Implicación (cont.) Técnicas de Prueba (Cap. 4)
6. Técnicas de Prueba (cont.) Técnicas de Prueba (cont.)
7. Técnicas de Prueba (cont.)
8. Introducción a la Lógica de Predicados (Vocabulario y Sintaxis). Cuantificadores (Caps. 8 y 9)
9. Modelación/Semántica formal Semántica formal (cont.)
10. Semántica formal (cont.) Técnicas de Prueba
11. Técnicas de Prueba (cont.) Técnicas de Prueba (cont.)
12. Revision
','Se aprenderán los teoremas de lógica proposicional y de predicados así como técnicas de demostración');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','1995-09-01','Creacion','','Pregrado',
'CI2511','','LOGICA SIMBOLICA','4','Cortinas','t','t','t','Sep-Dic','1995','Incluir','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','t','t','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',1);
INSERT INTO R_PROG_PL VALUES('1','1');
INSERT INTO R_DEP_PL VALUES('1','dep-ci');
INSERT INTO R_PROF_PL VALUES('mvidal','1','1');
INSERT INTO R_DEC_PL VALUES('1','dec-ep');


-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Logica Simbolica.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('1','1');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor María Esther Vidal.', now());
INSERT INTO R_BIT_PLAN values('1','2');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('María Esther Vidal',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('1','3');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('1','4');

-- Validacion de Coordinacion a Decanato
insert into bitacora (usbid,comentario,fecha) values('Coordinación de Computación',
'Se validó el programa y se envió al Decanato correspondiente.', now());
INSERT INTO R_BIT_PLAN values('1','5');

-- Validacion de Decanato
insert into bitacora (usbid,comentario,fecha) values('Decanato de Estudios Profesionales',
'Se validó el programa y se envió a DACE.', now());
INSERT INTO R_BIT_PLAN values('1','6');

-- Validacion de Dace
insert into bitacora (usbid,comentario,fecha) values('Lucy Pires',
'Se validó el programa por DACE y ya es un programa válido.', now());
INSERT INTO R_BIT_PLAN values('1','7');


--FIN PROGRAMA1---------------------------------------------------------------------------------------------

-- PROGRAMA 2 Discretas 1---------------------------------------------------------------------------------------------
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('4','2','0','Sep-Dic','1989',
'- Definicion de conceptos matematicos fundamentales de la computacion con una determinologia unificada y precisa.
- Ejercicio del razonamiento formal con antes abstractos.',
'- Conocimientos  de la nocion conjunto y  sus  diferentes  representaciones.
- Conocimiento del concepto de relacion estructuras relacionadas.
- Conjuntos, relaciones, funciones y operaciones.
- Se establece una terminologia que debe ser utilizada en todos los cursos posteriores de  la   carrera.',
'1)Conjuntos: axiomas. Paradojas. Relaciones entre conjuntos. Propiedades  de  las   relaciones. Propiedades de las operaciones.   Induccion   en   los   numeros naturales. 
2)Relaciones. Realciones especiales. Propiedades. Dominio. Funciones. Operaciones   sobre   funciones. Morfismos   u   homorfismos.  
3) Ordenamientos, clausuras y reticulados.
4) Equivalencias. Conjuntos enumerables.
6) Operaciones.Operaciones especiales: identidad, constante. propiedades: clausura, conmutatividad,   asociatividad,   idempotencia,   distriobutividad.   Elementos neutros   simetricos,   nulos.   
7) Secuencias.  
8) Numeros. Teoria elemental de numeros: division en los naturales; relacion de divisibilidad; numeros primos;descomposicion en factores primos; minimo comun multiplo; maximo comun divisor; algoritmos de euclides',
'Estrategias del curso ci-2521',
'Se recomiendan tres evaluaciones de porcentajes entre 25 a 40%',
'-[Baralt 89] Un ambiente funcional para las estructuras discretas y una representacion   para   su   automatizacion, USB, Departamento de Computacion y Tecnologia de la Informacion. 1989
-[Birkhoft y Bartee 70] Modern applied algebra, Mcgraw Hill. 1970
-[Casteran 81] Guia de diseño logico, Universidad Simon Bolivar 1981.
',
'1 Teoría de conjuntos. Operaciones. 
2 Familias. Conjuntos Potencia. Axioma de Fundamentación. Axioma de Sustitución. 
3 Pares Ordenados. Producto Cartesiano. Relaciones Binarias: dominio, rango. Producto. Imagen.
4 Tipos de Relaciones. Relaciones de Orden. 
5 Construcción de los números naturales. Teoremas básicos
6 Naturales. Pruebas por inducción Relaciones de Orden. Naturales. Aritmética.
7 Clausura de relaciones Naturales. Inducción. Aritmética. Clausuras 
8 Relaciones de equivalencia Clausura de relaciones. Relaciones de equivalencia Particiones 
9 Construcción del conjunto de números enteros. Números racionales y reales Particiones.
10 Funciones parciales y totales. Tipos de funciones. Teoremas Números enteros. Funciones Funciones Inversas
11 Cardinalidad. Conjuntos finitos. Teoremas Funciones.','Se aprenderán los fundamentos de conjuntos, relaciones, etc');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','1989-09-01','Creacion','','Pregrado',
'CI2521','','ESTRUCTURAS DISCRETAS I','4','Cortinas','t','t','f','Ene-Mar','1989','Incluir','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','t','t','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',2);
INSERT INTO R_PROG_PL VALUES('2','2');
INSERT INTO R_DEP_PL VALUES('2','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','2','2');
INSERT INTO R_DEC_PL VALUES('2','dec-ep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Estructuras Discretas I.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('2','8');

-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Yudith Cardinale.', now());
INSERT INTO R_BIT_PLAN values('2','9');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Yudith Cardinale',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('2','10');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('2','11');

-- Validacion de Coordinacion a Decanato
insert into bitacora (usbid,comentario,fecha) values('Coordinación de Computación',
'Se validó el programa y se envió al Decanato correspondiente.', now());
INSERT INTO R_BIT_PLAN values('2','12');

-- Validacion de Decanato
insert into bitacora (usbid,comentario,fecha) values('Decanato de Estudios Profesionales',
'Se validó el programa y se envió a DACE.', now());
INSERT INTO R_BIT_PLAN values('2','13');

-- Validacion de Dace
insert into bitacora (usbid,comentario,fecha) values('Lucy Pires',
'Se validó el programa por DACE y ya es un programa válido.', now());
INSERT INTO R_BIT_PLAN values('2','14');

--FIN PROGRAMA2---------------------------------------------------------------------------------------------

-- PROGRAMA 3 Estructuras 2-------------------------------------------------------------------------------------------
/*INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('4','2','0','Sep-Dic','1999',
'Definición de conceptos matemáticos fundamentales de la Computación con una terminología unificada y precisa.  Ejercicio del razonamiento formal con entes abstractos.',
'.Estudio de sistemas algebraicos abstractos: Semigrupos, Monoides, Grupos, Álgebras de Boole, y otros. 
Estudio de conceptos básicos de Diseño Lógico: Circuitos de Conmutación, Mapas de Karnaugh.
',
'1. Números enteros: Dominios de Integridad, Dominios Ordenados y Bien Ordenados,  Números Primos, Congruencias. 
2. Introducción a Álgebras: Grupoides, Semigrupos, Monoides, Subálgebras, Homomorfismos.
3. Grupos: Leyes, Potencias, Orden. Subgrupos. Homomorfismos de Grupos. Clases Laterales. Grupos Cíclicos. Permutaciones, Grupos de Transformaciones.  Grupo Cociente.
4. Álgebras Heterogéneas: Ejemplo – Álgebra Lineal .
5. Álgebras   Booleanas:   Leyes,   Expresiones   Booleanas,   Orden   Parcial   (Reticulados),  Átomos, Suma de Átomos,  Álgebras de Boole Finitas.  
6. Diseño Lógico:   Circuitos  de Conmutación, Álgebras  de Conmutación, Min/Max­términos, Teorema de Shannon, Adyacencias, Mapas de Karnaugh.',
'Sesiones semanales de 2 horas en las cuales se resuelven problemas relacionados con los temas tratados
en la teoría.',
' Pruebas cortas, tareas, exámenes parciales',
'D. Gries & F.B. Schneider, A Logical Approach to Discrete Math., 
Springler­Verlag, 1993J.D. Lipson, Elements of Algebra and Algebraic Computing, 
Addison­Wesley, 1981 A. Lloris & A. Prieto, Diseño Lógico, McGraw Hill, 1996',
'1. Dominios de Integridad, Enteros y propiedades, Inverso Aditivo, Sustracción, Dominios Bien-Ordenados Menor / Mayor,  Divisibilidad. 
2. Máximo Común Divisor,  Números Primos, Congruencias, Introducción a Álgebras: Neutros y Absorbentes
3. Inversas, Subálgebras, Semigrupos y monoides,	Homomorfismos
4. Homomorfismos (fin), Ajustes y Repaso 
5. Grupos: Definición y Leyes, Potencias, Orden, Subgrupos, Clases Laterales (inicio) 
6. Clases Laterales (fin), Grupos Cíclicos (inicio), Grupos Cíclicos (fin) 
7. Grupos de Transformaciones 
8. Repaso de CPO, Álgebras de Boole: Definición y Leyes, Leyes (continuación), Átomos
9. Suma de Átomos, Altura, Álgebras de Boole Finitas, Circuitos de Conmutación, Álgebras de Conmutación
10. Min/Max-términos, Adyacencias, Teorema de Shannon, Mapas de Karnaugh
11. Mapas de Karnaugh (fin) 
12. Repaso','Algebras de boole, mapas');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','1999-09-01','Creacion','','Pregrado',
'CI2522','','Estructuras Discretas II','4','Cortinas','t','t','f','Abr-Jul','1999','i','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','t','t','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',3);
INSERT INTO R_PROG_PL VALUES('3','3');
INSERT INTO R_DEP_PL VALUES('3','dep-ci');
INSERT INTO R_PROF_PL VALUES('figueira','3','3');
INSERT INTO R_DEC_PL VALUES('3','dec-ep'); 
--FIN PROGRAMA3--------------------------------------------------------------------------------------------- */

/*-- PROGRAMA 4 Estructuras Discretas 3-------------------------------------------------------------------------------------------
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('4','2','0','Sep-Dic','1995',
'1. Introduccion de herramientas matematicas utiles para la modelacion y el analisis de fenomenos o procesos discretos.
2. Introducción a una teoría discreta análoga al cálculo diferencial e integral.',
'Estudio de calculo difrencial, integral',
'1. Principios fundamentales del conteo.
2. Aplicación de principios fundamentales de conteo.
3. Número de n­particiones ordenadas y generalizadas de m (dos métodos).
4. Coeficiente binomial y multinomial. Propiedades. Sumas y productos. Operaciones sobresumas.
5. Teorema binomial y multinomial. Principio de inclusión­exclusión.
6. Ecuaciones de recurrencia. Métodos de resolución directo, de combinación.
7. Ecuaciones de recurrencia lineal con coeficientes constantes. 
8. Resolución por funciones generatrices.
9. Cálculo de diferencias.
10.Números de Stirling de segundo orden. 
11. Formula de Gregory­Newton. Sumas de funciones especiales.
14. Teorema fundamental del cálculo de sumas. Transformada en Abel.
15. Comportamiento asintótatico',
'Sesiones semanales de 2 horas en las cuales se resuelven problemas relacionados con los temas tratados
en la teoría.',
' Pruebas cortas, tareas, exámenes parciales',
'D. Knuth. Fundamental Algorithms. Addison­Wesley. 1973.',
'Sem 1: Principios fundamentales del conteo.
Sem 2: Aplicación de principios fundamentales de conteo.
Sem 3: Coeficiente binomial y multinomial. Propiedades. Sumas y productos. Operaciones sobresumas.
Sem 4: Teorema binomial y multinomial. Principio de inclusión­exclusión.
Sem 5: Ecuaciones de recurrencia. Métodos de resolución directo, de combinación.
Sem 6: Ecuaciones de recurrencia lineal con coeficientes constantes. 
Sem 7: Resolución por funciones generatrices.Cálculo de diferencias.
Sem 8: Números de Stirling de segundo orden. 
Sem 9: Formula de Gregory­Newton. Sumas de funciones especiales.
Sem 10: Teorema fundamental del cálculo de sumas. Transformada en Abel.
Sem 11: Comportamiento asintótatico.','Diferencial, integral');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','1999-09-01','Creacion','','Pregrado',
'CI2523','','Estructuras Discretas III','4','Cortinas','t','t','f','Sep-Dic','1995','i','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','t','t','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',4);
INSERT INTO R_PROG_PL VALUES('4','4');
INSERT INTO R_DEP_PL VALUES('4','dep-ci');
INSERT INTO R_PROF_PL VALUES('xiomara','4','4');
INSERT INTO R_DEC_PL VALUES('4','dec-ep');
--FIN PROGRAMA 4---------------------------------------------------------------------------------------------*/


-- PROGRAMA 5 Algoritmos I-------------------------------------------------------------------------------------------
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('3','1','3','Ene-Mar','2005',
'Intrducción a la resolución sistemática de problemas mediante algoritmos y a los principios básicos de la Programación.',
'1) Especificación formal de problemas mediante precondición y postcondición, utilizando el cálculo de predicados de primer orden.
2) Control de Complejidad en la resolución algorítmica de problemas. Utlicización del Diseño Descente y técnicas básicas de Diseño de Algoritmos. Refinamiento de Datos y de Prorogramas.
3) Metodología para la derivación y prueba de la Corrección de programas.
4) Esquemas de Algorítmos Iterativos. Diseños y construcción y Programas Iterativos.
5) Normas básicas de Estilo de Programación.
6) El estudiante deberá ser capaz de leer y entender especificaciones de programas. Entender la metodología que debe seguirse para desarrollar programas correctos.',
'1. PseudoLenguaje
2. Tipos básicos, variables, expresiones.
3. Procesos Iterativos
4. Diseño Descendente
5. Derivación formal de programas','Hay que evitar sobrecarga al estudiante con asignaciones que se salgan de los objetivos del curso.',
'Se recomienda elaborar los exámenes parciales, uno a la mitad del trimestre y uno al final',
'- Oscar Meza. Guía de algoritmos I. 2000
- Jorge Castro, Felipe Cucker, Xavier Messeguer, Albert Rubio, Lluis Solano, Borja Valles. “Curso de Programación”.
- McGraw Hill. 1993. ISBN­84­481­1959­2. Capítulos 1, 2 y 3.
- Kaldewaij Anne. “P',
'1. PseudoLenguaje (2 clases)
2. Tipos básicos, variables, expresiones. (5 clases )
3. Procesos Iterativos (6 clases)
4. Diseño Descendente (4 clases)
5. Derivación formal de programas (4 clases)','Se aprenderán los fundamentos de la programación');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','2005-01-01','Creacion','','Pregrado',
'CI2611','','ALGORITMOS Y ESTRUCTURAS I','3','Cortinas','t','t','t','Ene-Mar','2005','Incluir','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','t','t','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',3);
INSERT INTO R_PROG_PL VALUES('3','3');
INSERT INTO R_DEP_PL VALUES('3','dep-ci');
INSERT INTO R_PROF_PL VALUES('mvidal','3','3');
INSERT INTO R_DEC_PL VALUES('3','dec-ep');
-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Algoritmos Y Estructuras I.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('3','15');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor María Esther Vidal.', now());
INSERT INTO R_BIT_PLAN values('3','16');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('María Esther Vidal',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('3','17');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('3','18');

-- Validacion de Coordinacion a Decanato
insert into bitacora (usbid,comentario,fecha) values('Coordinación de Computación',
'Se validó el programa y se envió al Decanato correspondiente.', now());
INSERT INTO R_BIT_PLAN values('3','19');

-- Validacion de Decanato
insert into bitacora (usbid,comentario,fecha) values('Decanato de Estudios Profesionales',
'Se validó el programa y se envió a DACE.', now());
INSERT INTO R_BIT_PLAN values('3','20');

-- Validacion de Dace
insert into bitacora (usbid,comentario,fecha) values('Lucy Pires',
'Se validó el programa por DACE y ya es un programa válido.', now());
INSERT INTO R_BIT_PLAN values('3','21');

--FIN PROGRAMA 5---------------------------------------------------------------------------------------------

/*-- PROGRAMA 6 Algoritmos II-------------------------------------------------------------------------------------------
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('3','0','0','Sep-Dic','1995',
'1.­ Introducción a los conceptos básicos del análisis de algoritmos
2.­ Estudio del concepto de tipo abstracto de datos (TAD)
3.­ Estudio de algunos TADs importantes
4.­ Estudio de las estructuras de datos como representaciones efectivas y eficientes de un TAD
5.­ Estudio de los algoritmos de busqueda en secuencias
6.­ Estudio de los algoritmos de ordenamiento de secuencias',
'-Conocimiento de las nociones básicas del análisis de algorítmos y capacidad para su aplicaciónen casos sencillos.
-Familiarización con el concepto de TAD.
-Compresión de  la especificación formal de un TAD utilizando formalismo basado en la lógica de primer orden.
-Conocimiento de algunos TADs importantes y de estructuras de datos alternativas para su representación.
-Familiarización con las estructuras de datos usuales en los lenguajes de programación de lato nivel.
-Capacidad para seleccionar la estructura de datos más eficiente para represntar un TAD utilizando criterios de eficiencia en tiempo y memoria y frecuencia de uso de las operaciones del TAD.
-Capacidad para implementar TADs utilizando el lenguaje de programación de alto nivel.
-Conocimiento de los algorítmos más importantes de busqueda y ordenamiento de secuencias en memoria principal', 
 '-TIPOS ABSTRACTOS: Concepto de TAD. Especificaciones formales. Implementación: representación y especificaciones operativas.Encapsulamiento y privacidad. 
-ALGORITMOS DE ORDENAMIENTO INTERNO: Modelo de comparaciones. Algoritmos de intercambio selección e inserción. Heapsort y quicksort.
-ALGORITMOS DE BUSQUEDA:Busqueda lineal y busqueda binaria.', 'Hay que evitar sobrecarga al estudiante con asignaciones que se salgan de los objetivos del curso.',
' Se recomienda elaborar los exámenes parciales, uno a la mitad del trimestre y uno al final',
'-Pasarella, Edelmira  y Zoltan, Cristina. Tipos  Abstractos  y Algoritmos. Reporte  Interno  N° CI  1994­003  del Departamento de Computación y Tecnología de la Información de la USB. Abril 1994.
-Aho. Alfred. Hopcroft John y Ullman Jeffrey. Data Structures and Algorithms Addison Wesley 1983.',
'1.Búsqueda lineal y búsqueda binaria. Análisis de complejidad. Ordenamiento: inserción 
2. Ordenamiento: Selección y Burbuja, Mezcla Ordenamiento: Mezcla , Quicksort, análisis de complejidad 
3. Tipos Abstractos de Datos (TADs): especificaciones con modelos, ejemplo Diccionario. Modelos Abstractos (conjuntos, multiconjuntos, secuencias, relaciones y funciones), implementación.
4. Tipos Concretos de Datos: arreglos y registros, referencias o apuntadores, tipos algebraicos libres, ejemplos (expresiones, listas, árboles), definición de funciones, demostración de propiedades 
5. Tipos Algebraicos Libres: primitivas de programación, programación de ejemplos iterativos y recursivos 
6. Referencias 
7. Árboles de búsqueda y Árboles balanceados: rojo-negro.
8. Tablas de Hash','Se aprenderán los fundamentos del analisis de la programación');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','1995-09-01','Creacion','','Pregrado',
'CI2612','','Algoritmos Y Estructuras II','3','Cortinas','t','f','f','Ene-Mar','1995','i','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','t','t','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',6);
INSERT INTO R_PROG_PL VALUES('6','6');
INSERT INTO R_DEP_PL VALUES('6','dep-ci');
INSERT INTO R_PROF_PL VALUES('abianc','6','6');
INSERT INTO R_DEC_PL VALUES('6','dec-ep');
--FIN PROGRAMA 6---------------------------------------------------------------------------------------------*/

/*-- PROGRAMA 7 Algoritmos III-------------------------------------------------------------------------------------------
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('3','0','0','Sep-Dic','1995',
'- Estudio del modelo de Grafos.
- Estudio ed técnicas básicas para el diseño y análisis de algoritmos basándose en el modelo de grafos.',
'Estudio del modelo de grafos y de las estructuras básicas de representación de grafos.
Familiarización con los algoritmos fundamentales sobre grafos y con las técnicas de diseños de algoritmos utilizadas en ellos: ciclo Euclerianos, recorridos de grafos, caminos de costo mínimo (backtraking, etiquetamiento, progamación dinámica progresiva y regresiva). PERT (backtraking), árbol cobertor (greedy)
Presentar la noción de algoritmos eficientes.',
'- Definición de Grafo y Diagrafo, conceptos fundamentales: nodos, lados, aristas, arcos, subgrafos, cadenas, caminos, ciclos, circuitos, isomorfismos e invariantes.
- Representación de grafos: representación gráfica, representación en el computador: usando arreglos, usando listas enlazadas.
- Conectividad en grafos: alcance, clausura transitiva, algoritmo de Roy Warshal, componentes conexas y fuertemente conexas, puntos de articulación.
- Recorridos de grafos: modelo general de etiquetamiento: algoritmos de Busqueda en Profundidad (DFS) y Busqueda en Amplitud (DFS). Aplicaciones.
- Caminos de costs mínimo y máximo. Algoritmos de Dijkstra, Bellman (Programación Dinamica Progresiva y Regresiva), Floyd.
- Grafos de presedencia. Partición en niveles, Ordenamiento topológico, Programación de actividades.
- Arboles y Arborecencias. Propiedades. Arbol mínimo cobertor: Algoritmo de Prim y Kruskal.', 'Hay que evitar sobrecarga al estudiante con asignaciones que se salgan de los objetivos del curso.',
' Se recomienda elaborar los exámenes parciales, uno a la mitad del trimestre y uno al final',
'1. Ortega, Maruja, Meza, Oscar. “Grafos y Algoritmos”. Editorial Equinoccio, U:S:B: Caracas, 1993.
 2. Aho; Hopcroft; Ullman. “Estructuras de Datos y Algoritmos”. Addison­Wesley. 1983.',
'1.Administrativos, Tablas de Hash, Grafo (1): definicion, propiedades, representación.
2.Grafo (2): representación, Aplicaciones, Conectividad: Caminos y cadenas Eulerianos y hamiltoneanos
3.Alcanzabilidad: Clausura, Roy-Warshal, Componentes conexas y Fuertemente conexas
4.Recorridos: Esquema general, DFS y BFS: propiedades
5.Implementaciones DFS, Backtracking y Grafos implícitos
6.Grafos con costos. Costo mínimo, Principio de optimalidad. Dijkstra, propiedades y limitaciones
7.Algoritmo Floyd, Propiedades
8.Grafos de precedencias: Ordenamiento Topológico, Particionamiento por capas
9.Grafos de precedencias: Algoritmos de costo mínimo/máximo, Algoritmo Bellman
10.Arboles, Arborescencias y Bosques: Propiedades, Árbol Mínimo Cobertor: Algoritmos Prim, Kruskal, Conjuntos disjuntos
11.Búsqueda Informada: A*. Cálculo de heurísticas. Propiedades y limitaciones
','Se aprenderán los fundamentos de grafos');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','1995-09-01','Creacion','','Pregrado',
'CI2613','','Algoritmos Y Estructuras III','3','Cortinas','t','f','f','Abr-Jul','1995','i','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','t','t','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',7);
INSERT INTO R_PROG_PL VALUES('7','7');
INSERT INTO R_DEP_PL VALUES('7','dep-ci');
INSERT INTO R_PROF_PL VALUES('abianc','7','7');
INSERT INTO R_DEC_PL VALUES('7','dec-ep');
--FIN PROGRAMA 7--------------------------------------------------------------------------------------------- */

/*-- PROGRAMA 8 Traductores -------------------------------------------------------------------------------------------
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('3','1','3','Sep-Dic','1995',
'- Introducción a los principios teóricos que sustentan la construcción de traductores e interpretadores.
- Estudio de los lenguajes regulares y sus propiedades.
- Estudio de los lenguajes libres de contexto y sus propiedades.
- Construcción de reconocedores simples Top-Down y Bottom-Up.
- Introducción a los esquemas de traducción dirigidos por sintaxis.',
'- Conocer la jerarquía de Chomsky y sus implicaciones en el reconocimiento de lenguajes.
- Tener familiaridad con gramáticas y autómatas, y conocer su importancia en la definición de lenguajes y construcción de reconocedores.
- Saber transformar una especificación de un lenguaje en otra equivalente, en el marco de las equivalencia vistas en el curso.
- Tener familiaridad con el concepto de traducción dirigida por sintaxis y su importancia en la construcción de traductores e interpretadores.',
'1. Introducción: Lenguajes y máquinas virtuales.
2. Representación y definición de lenguajes: Gramáticas y reconocedores (autómatas) asociados. La jerarquía de Chomsky.
3. Lenguajes regulares: Expresiones regulares. Gramáticas lineales derechas. Autómatas finitos. Resultados de equivalencia. Propiedades de los lenguajes regulares. Aplicaciones: Análisis lexicográfico, pattern matching. 
4. Lenguajes libres de contexto: Arbol de derivación (Arbol sintáctico concreto). Eliminación de la recursión izquierda. Gramáticas LL (definición). Gramáticas LL(1). Construcción de reconocedores Top-Down basados en gramáticas  LL(1). Gramáticas LR(definición). Gramáticas LR(0). Construcción de reconocedores Bottom-up basados en  gramáticas LR(0).', 'Hay que evitar sobrecarga al estudiante con asignaciones que se salgan de los objetivos del curso.',
'Se recomienda elaborar los exámenes parciales, uno a la mitad del trimestre y uno al final',
'[Backhouse ] Syntax of Programming Lenguages, Theory and Practice.
[Aho Ullman 72] The Theory of Parsing Translation and Compiling (vol. I).',
'1.Lenguajes y Expresiones regulares (RegExps)
2.Autómatas Finitos Determinísticos (DFA), Autómatas Finitos No-determinísticos (NFA).
3.Equivalencia DFA-RegExps, Minimización de DFA, Aplicación al Análisis Lexicográfico, Propiedades de Clausura para Lenguajes Regulares, Lema de Bombeo para Lenguajes Regulares.
4.Lenguajes Libres de Contexto (CFL), Gramáticas Libres de Contexto (CFG), Derivaciones y árboles de Derivación, Autómatas de Pila (PDA).
5.Equivalencia CFG -> PDA, Lema de Bombeo y Propiedades de Clausura para Lenguajes Libres de Contexto, Gramática de Atributos, Aplicación al Análisis de Contexto y Traducción dirigida por Sintaxis.
6.Reconocedor Predictivo, Lookahead, Cálculo de FIRST y FOLLOW, Gramáticas Fuertemente LL(1).
7.Construcción de Tablas LL(1), Reconocedores bottom-up (shift-reduce) y Autómata de Prefijos Viables.
8.Construcción de Tablas LR(0) y SLR, Criterio de Decisión LR(0), Reconocedor LR.
','Se aprenderán los fundamentos de los interpretadores');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','1995-09-01','Creacion','','Pregrado',
'CI3725','','Traductores E Interpretadores','5','Cortinas','t','t','t','Abr-Jul','1995','i','Ingeniería de Computación','t','f','f','Obligatoria','Pregrado Regular','','t','t','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',8);
INSERT INTO R_PROG_PL VALUES('8','8');
INSERT INTO R_DEP_PL VALUES('8','dep-ci');
INSERT INTO R_PROF_PL VALUES('figueira','8','8');
INSERT INTO R_DEC_PL VALUES('8','dec-ep');
--FIN PROGRAMA 8--------------------------------------------------------------------------------------------- */

/*-- PROGRAMA 9 Lenguajes -------------------------------------------------------------------------------------------
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('3','0','0','Sep-Dic','1989',
'Estudio de las características fundamentales de los lenguajes de alto nivel y de los paradigmas de progrmación que éstos implementan.',
'• Estudio de los lenguajes de programación y de los principales  paradigmas de computación.
• Familiarización  con la nociones básicas del modelo imperativo de programación.
• Estudio del paradigma de progrmación con objetos y de las  alternativas  ofrecidas por los lenguajes de lato nivel para la implementación de tipos abstractos.',
'1. Introducción histórica. sintaxis y semántica.  Lenguajes de alto, medio y bajo nivel.  Lenguajes de propósito general y de propósito específico.  Paradigmas de progrmación.
2. Programación Imperativa. Arquitectura de Von Neumann. Variables y estados de  memoria. Flujo de control.
3. Variables y esatados de memoria. Tipo, valor, alcance y tiempo de vída de una variable. Variables locales y  globales.  Alcance y contexto:  Modelo estático  y dinámico.  Tipos de pasaje de parámetros . Tipos de datos abstractos y progrmación con objetos.  Evolución del concepto de tipo. Encapsulamiento y privacidad.  Objetos y clases.  Generalidad, sobrecarga de  operadores  y polimorfismo.  Reusabilidad.  Modelo dinámico de pasaje de  mensajes. 
4. Flujo de Control. Transferencias generales.  Jerarquías de estructuras de control.  Transformaciones entre modelos.  programación estructurada. Transferencias  entre unidades: subrutinas,  corrutinas, unidades concurrentes.',
'Hay que evitar sobrecarga al estudiante con asignaciones que se salgan de los objetivos del curso.',
'Se recomienda elaborar los exámenes parciales, uno a la mitad del trimestre y uno al final',
'Andrews y Schneider 83
Andrews, G.R. y Scheneider, F.B.: “Conceptos and Notations for Concurrent
programming”, Computing Surverys, Vol. 15, No. 1, Marzo 1983, pp. 3­40. Ben ­ Ari 82
Ben­Ari, M.: Principles of Concurrent Programming, Segunda  Edicción, John & Sons. 1987.',
'1.Administrativa, Introducción, Nombres y Asociación, Disposición y manejo de memoria, Espacio estático, pila y dinámico.
2.Nombres / Alcance, clausuras, Aliases y Sobrecarga.
3.Flujo de Control, Expresiones.
4.Secuenciación, Selección, Iteración, iteradores, Recursión.
5.Tipos de Datos: Clasificación yOrtogonalidad, Tipos de Datos: Verificación, Equivalencia e Inferencia.
6.Tipos de Datos: Registros, Arreglos y Cadenas.
7.Tipos de Datos: Conjuntos y Tipos Recursivos, Apuntadores, Recolección de Basura, Tipos de Datos: Listas, Entrada y Salida, Asignación y Comparación.
8.Subrutinas y Abstracción de Control, Secuencia de Llamada a fondo, Pasaje de parámetros y retorno de resultados.
9.Subrutinas y Abstracción de Control, Subrutinas Genéricas, Excepciones, Co-rutinas
10.Abstracción de Datos, Programación Orientada a Objetos.
11.Paradigma Funcional y Lógico.','Se aprenderán los fundamentos de los lenguajes de programacion');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','1989-09-01','Creacion','','Pregrado',
'CI3641','','Lenguajes De Programacion','3','Cortinas','t','f','f','Sep-Dic','1989','i','Ingeniería de Computación','t','f','f','Obligatoria','Pregrado Regular','','t','t','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',9);
INSERT INTO R_PROG_PL VALUES('9','9');
INSERT INTO R_DEP_PL VALUES('9','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','9','9');
INSERT INTO R_DEC_PL VALUES('9','dec-ep');
--FIN PROGRAMA 9--------------------------------------------------------------------------------------------- */

/*-- PROGRAMA 10 Interfaces -------------------------------------------------------------------------------------------
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('3','1','3','Sep-Dic','1995',
'Transmitir al estudiante el enfoque más adecuado bajo el cual hay que percibir, diseñar realizar y evaluar las interfases.',
'Permitir al estudiante entender el área de interacción hombre­máquina y ver la disciplina bajo el punto de vista de la tecnología de los equipos de entrada/salida, de la ergonomía de estos equipos, de los métodos de diseño y de desarrollo de software de interacción, de la psicología de la programación y de los usarios de los sistemas de aplicación y de los modelajes y mediciones de la interacción hombre­máquina',
'1.­ Introducción. Las interfases en la historia de la computación, textos y autores fundamentales: Vannevar Busch, J.C.R. Licklider, Doug Engerbart, Ted Nelson, Ivan Stherland, Alan Kay, Nicholas Negroponte, atc. Importancia de las Interfaces.
2.­ Importancia del diseño de las interfaces en el ciclo de la vida del software.
3.­ Preesntación de los equipos de entrada/salida, su funcionalidad el ergonomía.
4.­ Conocimiento de los tres canales principales de la comunicación: el canal visual, el canal auditivo y el canal gestual.',
'Hay que evitar sobrecarga al estudiante con asignaciones que se salgan de los objetivos del curso.',
'Se recomienda elaborar los exámenes parciales, uno a la mitad del trimestre y uno al final',
'-J. Preece, Y. Rogers, H. Sharp, D. Benyon, S. Holland, T. Carey. “Hunman­Computer Interaction”, Addison­Wesley, 1994
-B. Laurel, “Ther Art of Human­Computer Interface Desing”. Addison­Wesley, 1990',
'1. Marco de referencia para el estudio de la interacción humano-máquina
2. Historia de las Interfaces
3. Estilos y paradigmas de interacción. Capítulo 7 del Libro "Being Digital" de Nicholas Negroponte
4. Diseño de interacción humano-máquina	Principios de interactividad. Principios de diseño de interfaces (I)
5. Principles of Good GUI Design. Ejercicio de Diseño
6. Técnicas de Prototipos. Principios de diseño de interfaces (web). Navegación en ambientes web. Diseño de menús y esquemas de navegación.
7. Tipos de Ventanas, Diseño de ventanas, Diseño de Controles, Mensajes y Textos 
8. Arquitectura de la Información (I) 
9. Evaluación de Usabilidad de Sitios Web. 
10. Trabajo de evaluación de diseño
','Se aprenderán los fundamentos de las interacciones maquina-hombre');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','1989-09-01','Creacion','','Pregrado',
'CI4325','','Interfaces Con El Usuario','5','Audiovisual','t','t','t','Sep-Dic','1995','i','Ingeniería de Computación','t','f','f','Obligatoria','Pregrado Regular','','t','t','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',10);
INSERT INTO R_PROG_PL VALUES('10','10');
INSERT INTO R_DEP_PL VALUES('10','dep-ci');
INSERT INTO R_PROF_PL VALUES('abianc','10','10');
INSERT INTO R_DEC_PL VALUES('10','dec-ep');
--FIN PROGRAMA 10 --------------------------------------------------------------------------------------------- */

-- PROGRAMA ESPECIAL VIGENTE
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'2','0','2',
'Sep-Dic','1999',
'Estudiar, comprender y aprender tópicos avanzados en robótica',
'',
'1.Flujo Óptico en Robótica Móvil
2.Navegación Robótica
3.Uso de FPGAs en Control de Robots',
'Estrategias del curso','Evaluacion del curso',
'1. Arkin, Ronald C. Behavior­Based Robotics. MIT Press, 1998. 
2. Martin, Fred G. The Handy Board Technical Reference.The Media Laboratory. MIT, 1999',
'Cronograma del curso','La asignatura debe impartir 
conocimientos avanzados sobre robótica movil y que el estudiante este en capacidad de construir robots exitosos');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','2002-07-02','Creacion','','Pregrado',
'EC5804','','TÓPICOS ESPECIALES EN ROBÓTICA','3','Cortinas','t','t','t','Ene-Mar','2002','Incluir','Ingeniería de Computación','f','t','t',
'Obligatoria','Pregrado Regular','','t','t','t','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',4);
INSERT INTO R_PROG_PL VALUES('4','4');
INSERT INTO R_DEC_PL VALUES('4','dec-ep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Tópicos Especiales en Robótica.
Y se le asignó al Decanato de Estudios Profesionales.',now());
INSERT INTO R_BIT_PLAN values('4','22');

-- Validacion de Decanato
insert into bitacora (usbid,comentario,fecha) values('Decanato de Estudios Profesionales',
'Se validó el programa y se envió a DACE.', now());
INSERT INTO R_BIT_PLAN values('4','23');

-- Validacion de Dace
insert into bitacora (usbid,comentario,fecha) values('Lucy Pires',
'Se validó el programa por DACE y ya es un programa válido.', now());
INSERT INTO R_BIT_PLAN values('4','24');


---- UNION DECANATO COORDINACION DE PRUEBA ---
INSERT INTO R_DEC_COOR VALUES('dec-ep','coord-comp');
INSERT INTO R_DEC_COOR VALUES('dpost','coord-comp');
INSERT INTO R_DEC_COOR VALUES('dec-ep','coord-electronica');

---- PLABILLA CONFIGURABLE ----
-- Tipo materia
INSERT INTO TIPO_MATERIA values('Electiva');
INSERT INTO TIPO_MATERIA values('Extraplan');
INSERT INTO TIPO_MATERIA values('Obligatoria');
-- Clase materia
INSERT INTO CLASE_MATERIA values('Pregrado Regular');
INSERT INTO CLASE_MATERIA values('Curso de Cooperación');
INSERT INTO CLASE_MATERIA values('EG. Primer Ciclo');
INSERT INTO CLASE_MATERIA values('EG. Ciclo Profesional');
INSERT INTO CLASE_MATERIA values('Laboratorio');
INSERT INTO CLASE_MATERIA values('Proyecto');
INSERT INTO CLASE_MATERIA values('Seminario');
INSERT INTO CLASE_MATERIA values('Obligatoria');
INSERT INTO CLASE_MATERIA values('Tesis Grado, Tópico Especial');
-- Nivel
INSERT INTO CAMPO_NIVEL values('Pregrado');
INSERT INTO CAMPO_NIVEL values('Postgrado');
-- Tipo aula
INSERT INTO TIPO_AULA values('Cortinas');
INSERT INTO TIPO_AULA values('Persianas');
INSERT INTO TIPO_AULA values('Audiovisual');
INSERT INTO TIPO_AULA values('Dibujo');
INSERT INTO TIPO_AULA values('Música');
INSERT INTO TIPO_AULA values('Normal');
-- Forma de impartir
INSERT INTO CAMPO_IMPARTIR values('Presencial');
INSERT INTO CAMPO_IMPARTIR values('A distancia');
INSERT INTO CAMPO_IMPARTIR values('Mixta'); 
-- Trimestre de vigencia
INSERT INTO TRIMESTRE_VIGENCIA values(10,12,'Sep-Dic');
INSERT INTO TRIMESTRE_VIGENCIA values(01,03,'Ene-Mar');
INSERT INTO TRIMESTRE_VIGENCIA values(04,06,'Abr-Jul');

-- Asociaciones de estudiante con programacion
INSERT INTO R_EST_PROG VALUES('09-10816',1);
INSERT INTO R_EST_PROG VALUES('09-10816',2);
INSERT INTO R_EST_PROG VALUES('09-10816',3);


---------------- PROGRAMAS PARA LOS CICLOS DE PRUEBA ---------------------------

---******* POR VALIDAR DACE (CP28 para guardar y CP 39 para devolver)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('4','2','0','Sep-Dic','1999',
'Definición de conceptos matemáticos fundamentales de la Computación con una terminología unificada y precisa.  Ejercicio del razonamiento formal con entes abstractos.',
'.Estudio de sistemas algebraicos abstractos: Semigrupos, Monoides, Grupos, Álgebras de Boole, y otros. 
Estudio de conceptos básicos de Diseño Lógico: Circuitos de Conmutación, Mapas de Karnaugh.
',
'1. Números enteros: Dominios de Integridad, Dominios Ordenados y Bien Ordenados,  Números Primos, Congruencias. 
2. Introducción a Álgebras: Grupoides, Semigrupos, Monoides, Subálgebras, Homomorfismos.
3. Grupos: Leyes, Potencias, Orden. Subgrupos. Homomorfismos de Grupos. Clases Laterales. Grupos Cíclicos. Permutaciones, Grupos de Transformaciones.  Grupo Cociente.
4. Álgebras Heterogéneas: Ejemplo – Álgebra Lineal .
5. Álgebras   Booleanas:   Leyes,   Expresiones   Booleanas,   Orden   Parcial   (Reticulados),  Átomos, Suma de Átomos,  Álgebras de Boole Finitas.  
6. Diseño Lógico:   Circuitos  de Conmutación, Álgebras  de Conmutación, Min/Max­términos, Teorema de Shannon, Adyacencias, Mapas de Karnaugh.',
'Sesiones semanales de 2 horas en las cuales se resuelven problemas relacionados con los temas tratados
en la teoría.',
' Pruebas cortas, tareas, exámenes parciales',
'D. Gries & F.B. Schneider, A Logical Approach to Discrete Math., 
Springler­Verlag, 1993J.D. Lipson, Elements of Algebra and Algebraic Computing, 
Addison­Wesley, 1981 A. Lloris & A. Prieto, Diseño Lógico, McGraw Hill, 1996',
'1. Dominios de Integridad, Enteros y propiedades, Inverso Aditivo, Sustracción, Dominios Bien-Ordenados Menor / Mayor,  Divisibilidad. 
2. Máximo Común Divisor,  Números Primos, Congruencias, Introducción a Álgebras: Neutros y Absorbentes
3. Inversas, Subálgebras, Semigrupos y monoides,	Homomorfismos
4. Homomorfismos (fin), Ajustes y Repaso 
5. Grupos: Definición y Leyes, Potencias, Orden, Subgrupos, Clases Laterales (inicio) 
6. Clases Laterales (fin), Grupos Cíclicos (inicio), Grupos Cíclicos (fin) 
7. Grupos de Transformaciones 
8. Repaso de CPO, Álgebras de Boole: Definición y Leyes, Leyes (continuación), Átomos
9. Suma de Átomos, Altura, Álgebras de Boole Finitas, Circuitos de Conmutación, Álgebras de Conmutación
10. Min/Max-términos, Adyacencias, Teorema de Shannon, Mapas de Karnaugh
11. Mapas de Karnaugh (fin) 
12. Repaso','Algebras de boole, mapas');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','t','f','f','1999-09-01','Creacion','','Pregrado',
'CI2522','','ESTRUCTURAS DISCRETAS II','4','Cortinas','t','t','f','Abr-Jul','1999','Incluir','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',5);
INSERT INTO R_PROG_PL VALUES('5','5');
INSERT INTO R_DEP_PL VALUES('5','dep-ci');
INSERT INTO R_PROF_PL VALUES('figueira','5','5');
INSERT INTO R_DEC_PL VALUES('5','dec-ep'); 

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Estructuras Discretas II.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('5','25');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Carlos Figueira.', now());
INSERT INTO R_BIT_PLAN values('5','26');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Carlos Figueira',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('5','27');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('5','28');

-- Validacion de Coordinacion a Decanato
insert into bitacora (usbid,comentario,fecha) values('Coordinación de Computación',
'Se validó el programa y se envió al Decanato correspondiente.', now());
INSERT INTO R_BIT_PLAN values('5','29');

-- Validacion de Decanato
insert into bitacora (usbid,comentario,fecha) values('Decanato de Estudios Profesionales',
'Se validó el programa y se envió a DACE.', now());
INSERT INTO R_BIT_PLAN values('5','30'); 



---****** Rechazada a coord por decanato para modificar (CP 22)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('4','2','0','Sep-Dic','1995',
'1. Introduccion de herramientas matematicas utiles para la modelacion y el analisis de fenomenos o procesos discretos.
2. Introducción a una teoría discreta análoga al cálculo diferencial e integral.',
'Estudio de calculo difrencial, integral',
'1. Principios fundamentales del conteo.
2. Aplicación de principios fundamentales de conteo.
3. Número de n­particiones ordenadas y generalizadas de m (dos métodos).
4. Coeficiente binomial y multinomial. Propiedades. Sumas y productos. Operaciones sobresumas.
5. Teorema binomial y multinomial. Principio de inclusión­exclusión.
6. Ecuaciones de recurrencia. Métodos de resolución directo, de combinación.
7. Ecuaciones de recurrencia lineal con coeficientes constantes. 
8. Resolución por funciones generatrices.
9. Cálculo de diferencias.
10.Números de Stirling de segundo orden. 
11. Formula de Gregory­Newton. Sumas de funciones especiales.
14. Teorema fundamental del cálculo de sumas. Transformada en Abel.
15. Comportamiento asintótatico',
'Sesiones semanales de 2 horas en las cuales se resuelven problemas relacionados con los temas tratados
en la teoría.',
' Pruebas cortas, tareas, exámenes parciales',
'D. Knuth. Fundamental Algorithms. Addison­Wesley. 1973.',
'Sem 1: Principios fundamentales del conteo.
Sem 2: Aplicación de principios fundamentales de conteo.
Sem 3: Coeficiente binomial y multinomial. Propiedades. Sumas y productos. Operaciones sobresumas.
Sem 4: Teorema binomial y multinomial. Principio de inclusión­exclusión.
Sem 5: Ecuaciones de recurrencia. Métodos de resolución directo, de combinación.
Sem 6: Ecuaciones de recurrencia lineal con coeficientes constantes. 
Sem 7: Resolución por funciones generatrices.Cálculo de diferencias.
Sem 8: Números de Stirling de segundo orden. 
Sem 9: Formula de Gregory­Newton. Sumas de funciones especiales.
Sem 10: Teorema fundamental del cálculo de sumas. Transformada en Abel.
Sem 11: Comportamiento asintótatico.','Diferencial, integral');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','t','f','1999-09-01','Creacion','','Pregrado',
'CI2523','','ESTRUCTURAS DISCRETAS III','4','Cortinas','t','t','f','Sep-Dic','1995','Incluir','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',6);
INSERT INTO R_PROG_PL VALUES('6','6');
INSERT INTO R_DEP_PL VALUES('6','dep-ci');
INSERT INTO R_PROF_PL VALUES('xiomara','6','6');
INSERT INTO R_DEC_PL VALUES('6','dec-ep');
INSERT INTO RECHAZADOSDECAC VALUES('dec-ep','coord-comp',6,'Prueba rechazo de Decanato a Coord');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Estructuras Discretas III.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('6','31');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Xiomara Contreras.', now());
INSERT INTO R_BIT_PLAN values('6','32');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Xiomara Contreras',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('6','33');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('6','34');

-- Validacion de Coordinacion a Decanato
insert into bitacora (usbid,comentario,fecha) values('Coordinación de Computación',
'Se validó el programa y se envió al Decanato correspondiente.', now());
INSERT INTO R_BIT_PLAN values('6','35');

-- Rechazada de decanato a coordinacion
insert into bitacora (usbid,comentario,fecha) values('Decanato de Estudios Profesionales',
'Se rechazó la solicitud de tipo Creacion enviada por la Coordinación con la siguiente observación: Prueba rechazo de Decanato a Coord.', now());
INSERT INTO R_BIT_PLAN values('6','36');


--****** Por validar en coord para rechazar (CP 20)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('3','0','0','Sep-Dic','1995',
'1.­ Introducción a los conceptos básicos del análisis de algoritmos
2.­ Estudio del concepto de tipo abstracto de datos (TAD)
3.­ Estudio de algunos TADs importantes
4.­ Estudio de las estructuras de datos como representaciones efectivas y eficientes de un TAD
5.­ Estudio de los algoritmos de busqueda en secuencias
6.­ Estudio de los algoritmos de ordenamiento de secuencias',
'-Conocimiento de las nociones básicas del análisis de algorítmos y capacidad para su aplicaciónen casos sencillos.
-Familiarización con el concepto de TAD.
-Compresión de  la especificación formal de un TAD utilizando formalismo basado en la lógica de primer orden.
-Conocimiento de algunos TADs importantes y de estructuras de datos alternativas para su representación.
-Familiarización con las estructuras de datos usuales en los lenguajes de programación de lato nivel.
-Capacidad para seleccionar la estructura de datos más eficiente para represntar un TAD utilizando criterios de eficiencia en tiempo y memoria y frecuencia de uso de las operaciones del TAD.
-Capacidad para implementar TADs utilizando el lenguaje de programación de alto nivel.
-Conocimiento de los algorítmos más importantes de busqueda y ordenamiento de secuencias en memoria principal', 
 '-TIPOS ABSTRACTOS: Concepto de TAD. Especificaciones formales. Implementación: representación y especificaciones operativas.Encapsulamiento y privacidad. 
-ALGORITMOS DE ORDENAMIENTO INTERNO: Modelo de comparaciones. Algoritmos de intercambio selección e inserción. Heapsort y quicksort.
-ALGORITMOS DE BUSQUEDA:Busqueda lineal y busqueda binaria.', 'Hay que evitar sobrecarga al estudiante con asignaciones que se salgan de los objetivos del curso.',
' Se recomienda elaborar los exámenes parciales, uno a la mitad del trimestre y uno al final',
'-Pasarella, Edelmira  y Zoltan, Cristina. Tipos  Abstractos  y Algoritmos. Reporte  Interno  N° CI  1994­003  del Departamento de Computación y Tecnología de la Información de la USB. Abril 1994.
-Aho. Alfred. Hopcroft John y Ullman Jeffrey. Data Structures and Algorithms Addison Wesley 1983.',
'1.Búsqueda lineal y búsqueda binaria. Análisis de complejidad. Ordenamiento: inserción 
2. Ordenamiento: Selección y Burbuja, Mezcla Ordenamiento: Mezcla , Quicksort, análisis de complejidad 
3. Tipos Abstractos de Datos (TADs): especificaciones con modelos, ejemplo Diccionario. Modelos Abstractos (conjuntos, multiconjuntos, secuencias, relaciones y funciones), implementación.
4. Tipos Concretos de Datos: arreglos y registros, referencias o apuntadores, tipos algebraicos libres, ejemplos (expresiones, listas, árboles), definición de funciones, demostración de propiedades 
5. Tipos Algebraicos Libres: primitivas de programación, programación de ejemplos iterativos y recursivos 
6. Referencias 
7. Árboles de búsqueda y Árboles balanceados: rojo-negro.
8. Tablas de Hash','Se aprenderán los fundamentos del analisis de la programación');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','t','f','1995-09-01','Creacion','','Pregrado',
'CI2612','','ALGORITMOS Y ESTRUCTURAS II','3','Cortinas','t','f','f','Ene-Mar','1995','Incluir','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',7);
INSERT INTO R_PROG_PL VALUES('7','7');
INSERT INTO R_DEP_PL VALUES('7','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','7','7');
INSERT INTO R_DEC_PL VALUES('7','dec-ep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Algoritmos Y Estructuras II.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('7','37');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Yudith Cardinale.', now());
INSERT INTO R_BIT_PLAN values('7','38');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Yudith Cardinale',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('7','39');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('7','40');


--****** Por validar de Decanato a DACE (CP 42)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('3','0','0','Sep-Dic','1995',
'- Estudio del modelo de Grafos.
- Estudio ed técnicas básicas para el diseño y análisis de algoritmos basándose en el modelo de grafos.',
'Estudio del modelo de grafos y de las estructuras básicas de representación de grafos.
Familiarización con los algoritmos fundamentales sobre grafos y con las técnicas de diseños de algoritmos utilizadas en ellos: ciclo Euclerianos, recorridos de grafos, caminos de costo mínimo (backtraking, etiquetamiento, progamación dinámica progresiva y regresiva). PERT (backtraking), árbol cobertor (greedy)
Presentar la noción de algoritmos eficientes.',
'- Definición de Grafo y Diagrafo, conceptos fundamentales: nodos, lados, aristas, arcos, subgrafos, cadenas, caminos, ciclos, circuitos, isomorfismos e invariantes.
- Representación de grafos: representación gráfica, representación en el computador: usando arreglos, usando listas enlazadas.
- Conectividad en grafos: alcance, clausura transitiva, algoritmo de Roy Warshal, componentes conexas y fuertemente conexas, puntos de articulación.
- Recorridos de grafos: modelo general de etiquetamiento: algoritmos de Busqueda en Profundidad (DFS) y Busqueda en Amplitud (DFS). Aplicaciones.
- Caminos de costs mínimo y máximo. Algoritmos de Dijkstra, Bellman (Programación Dinamica Progresiva y Regresiva), Floyd.
- Grafos de presedencia. Partición en niveles, Ordenamiento topológico, Programación de actividades.
- Arboles y Arborecencias. Propiedades. Arbol mínimo cobertor: Algoritmo de Prim y Kruskal.', 'Hay que evitar sobrecarga al estudiante con asignaciones que se salgan de los objetivos del curso.',
' Se recomienda elaborar los exámenes parciales, uno a la mitad del trimestre y uno al final',
'1. Ortega, Maruja, Meza, Oscar. “Grafos y Algoritmos”. Editorial Equinoccio, U:S:B: Caracas, 1993.
 2. Aho; Hopcroft; Ullman. “Estructuras de Datos y Algoritmos”. Addison­Wesley. 1983.',
'1.Administrativos, Tablas de Hash, Grafo (1): definicion, propiedades, representación.
2.Grafo (2): representación, Aplicaciones, Conectividad: Caminos y cadenas Eulerianos y hamiltoneanos
3.Alcanzabilidad: Clausura, Roy-Warshal, Componentes conexas y Fuertemente conexas
4.Recorridos: Esquema general, DFS y BFS: propiedades
5.Implementaciones DFS, Backtracking y Grafos implícitos
6.Grafos con costos. Costo mínimo, Principio de optimalidad. Dijkstra, propiedades y limitaciones
7.Algoritmo Floyd, Propiedades
8.Grafos de precedencias: Ordenamiento Topológico, Particionamiento por capas
9.Grafos de precedencias: Algoritmos de costo mínimo/máximo, Algoritmo Bellman
10.Arboles, Arborescencias y Bosques: Propiedades, Árbol Mínimo Cobertor: Algoritmos Prim, Kruskal, Conjuntos disjuntos
11.Búsqueda Informada: A*. Cálculo de heurísticas. Propiedades y limitaciones
','Se aprenderán los fundamentos de grafos');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','t','f','f','f','t','f','1995-09-01','Creacion','','Pregrado',
'CI2613','','ALGORITMOS Y ESTRUCTURAS III','3','Cortinas','t','f','f','Abr-Jul','1995','Incluir','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',8);
INSERT INTO R_PROG_PL VALUES('8','8');
INSERT INTO R_DEP_PL VALUES('8','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','8','8');
INSERT INTO R_DEC_PL VALUES('8','dec-ep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Algoritmos Y Estructuras III.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('8','41');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Yudith Cardinale.', now());
INSERT INTO R_BIT_PLAN values('8','42');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Yudith Cardinale',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('8','43');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('8','44');

-- Validacion de Coordinacion a Decanato
insert into bitacora (usbid,comentario,fecha) values('Coordinación de Computación',
'Se validó el programa y se envió al Decanato correspondiente.', now());
INSERT INTO R_BIT_PLAN values('8','45');

--****** Por Validar en Coord (CP 21)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','1','3',
'Sep-Dic','2011',
'Transmitir al estudiante el enfoque más adecuado bajo el cual hay que percibir, diseñar realizar y evaluar las 
interfaces.','Permitir al estudiante entender el área de interacción hombre­máquina y ver la disciplina bajo el punto de vista 
de la tecnología de los equipos de entrada/salida, de la ergonomía de estos equipos, de los métodos de diseño y 
de desarrollo de software de interacción, de la psicología de la programación y de los usarios de los sistemas de 
aplicación y de los modelajes y mediciones de la interacción hombre­máquina.',
'1.­ Introducción. Las interfases en la historia de la computación, textos y autores fundamentales: Vannevar 
Busch, J.C.R. Licklider, Doug Engerbart, Ted Nelson, Ivan Stherland, Alan Kay, Nicholas Negroponte, atc. 
Importancia de las Interfaces.
2.­ Importancia del diseño de las interfaces en el ciclo de la vida del software.
3.­ Preesntación de los equipos de entrada/salida, su funcionalidad el ergonomía.
4.­ Conocimiento de los tres canales principales de la comunicación: el canal visual, el canal auditivo y el canal 
gestual.',
'Estrategias del curso','Evaluacion del curso','Fuentes del curso','Cronograma del curso','Esta materia imparte el contenido necesario para que los estudiantes entiendan el enfoque adecuado para el diseño y evaluación de las interfaces');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','t','f','2010-07-02','Creacion','','Pregrado',
'CI4325','','INTERFACES CON EL USUARIO','5','Audiovisual','t','t','t','Ene-Mar','2010','Incluir','Ingeniería de Computación','f','f','t',
'Electiva','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',9);
INSERT INTO R_PROG_PL VALUES('9','9');
INSERT INTO R_DEP_PL VALUES('9','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','9','9');
INSERT INTO R_DEC_PL VALUES('9','dec-ep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Interfaces con el usuario.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('9','46');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Yudith Cardinale.', now());
INSERT INTO R_BIT_PLAN values('9','47');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Yudith Cardinale',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('9','48');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('9','49');



--****** Asignada a profesor para completar (CP 6)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','0','3',
'Sep-Dic','2010',
'Proporcionar una introducción a la Computación Gráfica elemental. Capacitar para la selección y la aplicación 
Computación Gráfica disponible en el mercado. Capacitar para el diseño de una aplicación gráfica sencilla.',
'Proporcionar conocimientos básicos sobres las técnicas de computación gráfica estática en 2D y 3D. 
Proporcionar una visión sobre la estructura de un paquete gráfico, la realización de las primitivas de salida, las 
transformaciones, la visualización, el hardware gráfico y el modelaje matemático sencillo.','','','','','','Establecer los contenidos basicos asociados a la Computación Gráfica');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','2010-07-02','Creacion','','Pregrado',
'CI4321','','COMPUTACIÓN GRÁFICA','4','Audiovisual','t','t','t','Ene-Mar','2010','Incluir','Ingeniería de Computación','f','f','t',
'Electiva','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',10);
INSERT INTO R_PROG_PL VALUES('10','10');
INSERT INTO R_DEP_PL VALUES('10','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','10','10');
INSERT INTO R_DEC_PL VALUES('10','dec-ep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Computación Gráfica.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('10','50');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Yudith Cardinale.', now());
INSERT INTO R_BIT_PLAN values('10','51');



--****** Por asignar en departamento (CP 12)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','0','3',
'Sep-Dic','2001',
'El proceso de evolución y mantenimiento de software en el modelo de desarrollo iterativo incremental. 
Apectos sistémicos de la Ingeniería de Software. Efectividad y eficiencia. Metodologías de desarrollo. 
Elementos   del   trabajo   en   equipo   (teamwork)   y   control   de   proyectos.   Control   de   configuración. 
Herramientas de apoyo básico. ',
'',
'','','','','','Sinoptico del programa de Ingeniería de Software');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','t','f','f','f','f','f','f','2001-07-02','Creacion','','Pregrado',
'CI4712','','INGENIERÍA DE SOFTWARE II','5','Cortinas','t','t','t','Ene-Mar','1999','Incluir','Ingeniería de Computación','f','f','t',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',11);
INSERT INTO R_PROG_PL VALUES('11','11');
INSERT INTO R_DEP_PL VALUES('11','dep-ci');
INSERT INTO R_DEC_PL VALUES('11','dec-ep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Ingeniería de Software II.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('11','52');



--******* Por validar en DPTO (CP 14)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES('3','1','3','Sep-Dic','2001','Al finalizar
el curso los estudiantes tendrán un conocimiento básico sobre la noción de protocolo de comunicación, la 
estructura de software/hardware de redes locales, las funciones principales de las capas de software en el modelo TCP/IP y 
algunos modelos de programación en redes, en especial el modelo cliente­servidor.','','TEMA 1: Conceptos básicos. Internet. Redes locales, de área ancha, etc. Protocolos de uso e implementación de 
servicios. Estructuración de software de red por capas. Modelos TCP/IP y OSI. Protocolos basados en pregunta­
respuesta. Servicios de red.
TEMA 2: Introducción a Internet (oredesIP). Identificadores de máquimas: dirección “física” y dirección IP. Espacio 
de direcciones IP: dominios y máquinas. Nombres nemónicos: servicio DNS. Asociación número IP <­> nombre DNS.
TEMA 3: Introducción a la capa de transporte. Interfaz de programación en redes. Sockets: par de pares (dirección IP, 
puerto).
TEMA 4: Estudios de casos de protocolo estándares sobre capas de transpote, tales como RFC822, POP, HTTP.
','Estrategias del cuerso','Estrategias de evaluación','- Petterson, L. Y Davie, B. “Computer Networks: A Systems Approach”,Morgan Kaufmann Publishers, Inc, 199
- Tanembaum, A. “Computer Networks”, Tercera edición, Prentice Hall, 1996
','Ver en la pagina web del curso','Es una materia teorico-practica para que los estudiantes adquieran conocimientos basicos sobre la comunicación en redes');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','t','f','f','f','f','f','2001-07-02','Creacion','','Pregrado',
'CI4835','','REDES I','5','Cortinas','t','t','t','Ene-Mar','1999','Incluir','Ingeniería de Computación','f','f','f',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dpost','');
INSERT INTO R_Coord_pl VALUES('coord-comp',12);
INSERT INTO R_PROG_PL VALUES('12','12');
INSERT INTO R_DEP_PL VALUES('12','dep-ci');
INSERT INTO R_PROF_PL VALUES('figueira','12','12');
INSERT INTO R_DEC_PL VALUES('12','dec-ep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Redes I.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('12','53');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Carlos Figueira.', now());
INSERT INTO R_BIT_PLAN values('12','54');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Carlos Figueira',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('12','55');


--***** Por asignar para rechazar a Coordinacion (CP 15)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'4','0','2',
'Sep-Dic','1999',
'El objetivo central del curso es que el estudiante comprenda los conceptos de máquina real y máquina virtual y 
obtenga conocimiento básicos sobre los componentes claves de un computador, es decir, la unidad central del 
procezamiento, la jerarquia de memorias, los dispositivos de E/S y los mecanismos de interconexión.',
'-Conocer los componentes básicos de un computador: CPU, memoria y dispositivos periféricos.
-Introducir conceptos relacionados con los componenetes básicos de arquitecturas modernas, como por ejemplo: pipeline y multiprocesadores.
- Comprender la relación entre el concepto de máquina y el del lenguaje que la misma interpreta.',
'','','','','','Este curso permite que al finalizar, los estudiantes tendrán un conocimiento básico sobre los componentes claves de un computador, la jerarquía de memorias y el mecanismo de conexión con los dispositivos de entrada/salidad. 
Además estarán en capacidad de entender el costo de ejecutar las instrucciones y tipos de datos de un lenguaje de programación imperativo de alto nivel, de traducir manualmente rutinas pequeñas escritas en un lenguaje fuente de alto nivel a un lenguaje ensamblable 
y de realizar entonaciones sencillas para mejorar el desempeño de esas rutinas. La asignatura sienta las bases para desarrollar posteriormente nociones más exactas y sofisticadas de compilación y enlace, depuración, entonación y evaluación de desempeño, arquitectura del computador 
y uso de llamadas al sistema de operación.');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','t','f','f','f','f','f','f','1999-07-02','Creacion','','Pregrado',
'CI3815','','ORGANIZACIÓN DEL COMPUTADOR','5','Cortinas','t','t','t','Ene-Mar','1999','Incluir','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',13);
INSERT INTO R_PROG_PL VALUES('13','13');
INSERT INTO R_DEP_PL VALUES('13','dep-ci');
INSERT INTO R_DEC_PL VALUES('13','dec-ep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Organización del Computador.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('13','56');

--******  Rechazada a profesor (Para completar CP6)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'0','0','3',
'Abr-Jul','2000',
'Introducción a la resolución sistemática de problemas mediante algoritmos y a los principios básicos de la Programación.',
'Esquemas de Algoritmos Iterativos. Diseño y construcción de Programas Iterativos.
Normas básicas de Estilo de Programación.
El estudiante deberá ser capaz de leer y entender especificaciones de programas. Entender la metodología que debe seguirse para desarrollar programas correctos.',
'Desarrollo de programas utilizando Java',
'Estrategias del curso',
'Hay que evitar sobrecarga al estudiante con asignaciones que se salgan de los objetivos del curso. En teoría se recomienda 
elaborar los exámenes parciales, uno a la mitad del trimestre y uno al final. En laboratorio se recomienda la evaluación 
continua semanal en el aula. Los porcentajes deberían estar entre 60­70% teoría, y 30­40% laboratorio.
',
'- Oscar Meza. Guía de algoritmos I. 2000
-Jorge Castro, Felipe Cucker, Xavier Messeguer, Albert Rubio, Lluis Solano, Borja Valles. “Curso de Programación”. McGraw Hill. 1993. ISBN­84­481­1959­2. Capítulos 1, 2 y 3.
',
'1.­ Clase 1 (segunda semana): Familiarización con en ambiente de desarrollo JDK 1.2. Sintaxis de un programa en JAVA. 
Un ejemplo sencillo (tipo Hello World!!).Compilación y ejecución de un programa en JAVA.
2.­ Clase 2 : Práctica completa sobre especificación y desarrollo de varios algoritmos en lenguaje natural.
3.­ Clase 3:  Asignación, secuenciación y acciones parametrizadas: Práctica sobre máquina de trazados ( el equipo docente 
tendrá que desarrollar la clase “máquinas de trazados”).
4.­ Clase 4: Acciones parametrizadas y condicional: Práctica sobre la máquina de trazados.
5.­ Clse 5: Acciones parametrizadas, condicional e iterativas: Máquina de trazados, otros ejemplos númericos. 
6.­ Clase 6: Acciones parametrizadas, condicional e iterativas: Máquina dde trazados, otros ejemplos númericos.
7.­ Clase 7: Arreglos.
8.­ Clase 8: Arreglos + Archivo secuencial.
9.­ Clase 9: Arreglos + Archivo secuencial + práctica sobre derivación.','Se necesita una materia para acompanar la teoria de Algoritmos I que permite a los estudiantes aplicar los conceptos estudiados con un lenguaje de programación');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','t','f','f','f','f','1999-07-02','Creacion','','Pregrado',
'CI2691','','LABORATORIO DE ALGORITMOS Y ESTRUCTURAS I','2','Audiovisual','t','t','t','Ene-Mar','1999','Incluir','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','t','t','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',14);
INSERT INTO R_PROG_PL VALUES('14','14');
INSERT INTO R_DEP_PL VALUES('14','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','14','14');
INSERT INTO R_DEC_PL VALUES('14','dec-ep');
INSERT INTO rechazadosd VALUES('dep-ci','yudith',14,'Prueba de rechazo a profesor');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Laboratorio de Algoritmos y Estructuras I.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('14','57');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Yudith Cardinale.', now());
INSERT INTO R_BIT_PLAN values('14','58');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Yudith Cardinale',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('14','59');  

insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se rechazó el programa enviado por el profesor con la siguiente observación: Prueba de rechazo a profesor.', now());
INSERT INTO R_BIT_PLAN values('14','60');


---***** Rechazada a departamento para modificar (CP 38)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'2','2','2',
'Abr-Jul','2001',
'Estudiar, comprender y aprender el enfoque de la programación estructurada y orientada a objetos',
'',
'1.­ Introducción al computador: Conceptos básicos de arquitectura del computador.
2.­ Introducción a los lenguajes de programación, definición y características. Breve historia y utilidad 
del lenguaje de programación utilizado para programar.
3.­ Introducción a los ambientes de programación. 
4.­ Definición de un algoritmo. Formas de representar un algoritmo y Programación estructurada.
5.­   Introducción   al   modelaje   de   problemas   bajo   el   enfoque   de   programación   estructurada.   Pasos 
involucrados en la programación. Análisis de los datos de un problema y su asociación con los datos de 
las entradas y salidas de un programa.
6.­ Estructura general de un programa: constantes, tipos básicos, variables y expresiones.
7.­ Introducción definitiva de asignación, entrada y salida de datos.
8.­ Estructuras básicas de control: secuenciación, iteración y selección.',
'Estrategias del curso','Evaluacion del curso','Fuentes del curso','Cronograma del curso','La asignatura debe impartir conocimientos basicos sobre Computacion, especificamente programación estructurada');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','t','f','t','f','2002-07-02','Creacion','','Pregrado',
'CI2125','','COMPUTACIÓN I','3','Cortinas','t','t','t','Ene-Mar','2002','Incluir','Ingeniería de Computación','f','t','t',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',15);
INSERT INTO R_PROG_PL VALUES('15','15');
INSERT INTO R_DEP_PL VALUES('15','dep-ci');
INSERT INTO R_PROF_PL VALUES('xiomara','15','15');
INSERT INTO R_DEC_PL VALUES('15','dec-ep');
INSERT INTO RECHAZADOSCaD VALUES('coord-comp','dep-ci',15,'Prueba rechazo de coordinación');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Computación I.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('15','61');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Xiomara Contreras.', now());
INSERT INTO R_BIT_PLAN values('15','62');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Xiomara Contreras',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('15','63');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('15','64');

INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se rechazó el programa enviado por el Departamento con la siguiente observación: Prueba rechazo de coordinación.',now());
INSERT INTO R_BIT_PLAN values('15','65');




---***** Por validar dace (CP 27)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('3','0','0','Sep-Dic','1989',
'Estudio de las características fundamentales de los lenguajes de alto nivel y de los paradigmas de progrmación que éstos implementan.',
'• Estudio de los lenguajes de programación y de los principales  paradigmas de computación.
• Familiarización  con la nociones básicas del modelo imperativo de programación.
• Estudio del paradigma de progrmación con objetos y de las  alternativas  ofrecidas por los lenguajes de lato nivel para la implementación de tipos abstractos.',
'1. Introducción histórica. sintaxis y semántica.  Lenguajes de alto, medio y bajo nivel.  Lenguajes de propósito general y de propósito específico.  Paradigmas de progrmación.
2. Programación Imperativa. Arquitectura de Von Neumann. Variables y estados de  memoria. Flujo de control.
3. Variables y esatados de memoria. Tipo, valor, alcance y tiempo de vída de una variable. Variables locales y  globales.  Alcance y contexto:  Modelo estático  y dinámico.  Tipos de pasaje de parámetros . Tipos de datos abstractos y progrmación con objetos.  Evolución del concepto de tipo. Encapsulamiento y privacidad.  Objetos y clases.  Generalidad, sobrecarga de  operadores  y polimorfismo.  Reusabilidad.  Modelo dinámico de pasaje de  mensajes. 
4. Flujo de Control. Transferencias generales.  Jerarquías de estructuras de control.  Transformaciones entre modelos.  programación estructurada. Transferencias  entre unidades: subrutinas,  corrutinas, unidades concurrentes.',
'Hay que evitar sobrecarga al estudiante con asignaciones que se salgan de los objetivos del curso.',
'Se recomienda elaborar los exámenes parciales, uno a la mitad del trimestre y uno al final',
'Andrews y Schneider 83
Andrews, G.R. y Scheneider, F.B.: “Conceptos and Notations for Concurrent
programming”, Computing Surverys, Vol. 15, No. 1, Marzo 1983, pp. 3­40. Ben ­ Ari 82
Ben­Ari, M.: Principles of Concurrent Programming, Segunda  Edicción, John & Sons. 1987.',
'1.Administrativa, Introducción, Nombres y Asociación, Disposición y manejo de memoria, Espacio estático, pila y dinámico.
2.Nombres / Alcance, clausuras, Aliases y Sobrecarga.
3.Flujo de Control, Expresiones.
4.Secuenciación, Selección, Iteración, iteradores, Recursión.
5.Tipos de Datos: Clasificación yOrtogonalidad, Tipos de Datos: Verificación, Equivalencia e Inferencia.
6.Tipos de Datos: Registros, Arreglos y Cadenas.
7.Tipos de Datos: Conjuntos y Tipos Recursivos, Apuntadores, Recolección de Basura, Tipos de Datos: Listas, Entrada y Salida, Asignación y Comparación.
8.Subrutinas y Abstracción de Control, Secuencia de Llamada a fondo, Pasaje de parámetros y retorno de resultados.
9.Subrutinas y Abstracción de Control, Subrutinas Genéricas, Excepciones, Co-rutinas
10.Abstracción de Datos, Programación Orientada a Objetos.
11.Paradigma Funcional y Lógico.','Se aprenderán los fundamentos de los lenguajes de programacion');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','t','f','f','1989-09-01','Creacion','','Pregrado',
'CI3641','','LENGUAJES DE PROGRAMACION','3','Cortinas','f','f','f','Sep-Dic','1989','Incluir','Ingeniería de Computación','t','f','f','Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',16);
INSERT INTO R_PROG_PL VALUES('16','16');
INSERT INTO R_DEP_PL VALUES('16','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','16','16');
INSERT INTO R_DEC_PL VALUES('16','dec-ep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Lenguajes De Programacion.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('16','66');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Yudith Cardinale.', now());
INSERT INTO R_BIT_PLAN values('16','67');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Yudith Cardinale',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('16','68');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('16','69');

-- Validacion de Coordinacion a Decanato
insert into bitacora (usbid,comentario,fecha) values('Coordinación de Computación',
'Se validó el programa y se envió al Decanato correspondiente.', now());
INSERT INTO R_BIT_PLAN values('16','70');

-- Validacion de Decanato
insert into bitacora (usbid,comentario,fecha) values('Decanato de Estudios Profesionales',
'Se validó el programa y se envió a DACE.', now());
INSERT INTO R_BIT_PLAN values('16','71'); 

---***** Rechazada a coordinacion de Decanato para anular (CP 23)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('3','1','3','Sep-Dic','1995',
'- Introducción a los principios teóricos que sustentan la construcción de traductores e interpretadores.
- Estudio de los lenguajes regulares y sus propiedades.
- Estudio de los lenguajes libres de contexto y sus propiedades.
- Construcción de reconocedores simples Top-Down y Bottom-Up.
- Introducción a los esquemas de traducción dirigidos por sintaxis.',
'- Conocer la jerarquía de Chomsky y sus implicaciones en el reconocimiento de lenguajes.
- Tener familiaridad con gramáticas y autómatas, y conocer su importancia en la definición de lenguajes y construcción de reconocedores.
- Saber transformar una especificación de un lenguaje en otra equivalente, en el marco de las equivalencia vistas en el curso.
- Tener familiaridad con el concepto de traducción dirigida por sintaxis y su importancia en la construcción de traductores e interpretadores.',
'1. Introducción: Lenguajes y máquinas virtuales.
2. Representación y definición de lenguajes: Gramáticas y reconocedores (autómatas) asociados. La jerarquía de Chomsky.
3. Lenguajes regulares: Expresiones regulares. Gramáticas lineales derechas. Autómatas finitos. Resultados de equivalencia. Propiedades de los lenguajes regulares. Aplicaciones: Análisis lexicográfico, pattern matching. 
4. Lenguajes libres de contexto: Arbol de derivación (Arbol sintáctico concreto). Eliminación de la recursión izquierda. Gramáticas LL (definición). Gramáticas LL(1). Construcción de reconocedores Top-Down basados en gramáticas  LL(1). Gramáticas LR(definición). Gramáticas LR(0). Construcción de reconocedores Bottom-up basados en  gramáticas LR(0).', 'Hay que evitar sobrecarga al estudiante con asignaciones que se salgan de los objetivos del curso.',
'Se recomienda elaborar los exámenes parciales, uno a la mitad del trimestre y uno al final',
'[Backhouse ] Syntax of Programming Lenguages, Theory and Practice.
[Aho Ullman 72] The Theory of Parsing Translation and Compiling (vol. I).',
'1.Lenguajes y Expresiones regulares (RegExps)
2.Autómatas Finitos Determinísticos (DFA), Autómatas Finitos No-determinísticos (NFA).
3.Equivalencia DFA-RegExps, Minimización de DFA, Aplicación al Análisis Lexicográfico, Propiedades de Clausura para Lenguajes Regulares, Lema de Bombeo para Lenguajes Regulares.
4.Lenguajes Libres de Contexto (CFL), Gramáticas Libres de Contexto (CFG), Derivaciones y árboles de Derivación, Autómatas de Pila (PDA).
5.Equivalencia CFG -> PDA, Lema de Bombeo y Propiedades de Clausura para Lenguajes Libres de Contexto, Gramática de Atributos, Aplicación al Análisis de Contexto y Traducción dirigida por Sintaxis.
6.Reconocedor Predictivo, Lookahead, Cálculo de FIRST y FOLLOW, Gramáticas Fuertemente LL(1).
7.Construcción de Tablas LL(1), Reconocedores bottom-up (shift-reduce) y Autómata de Prefijos Viables.
8.Construcción de Tablas LR(0) y SLR, Criterio de Decisión LR(0), Reconocedor LR.
','Se aprenderán los fundamentos de los interpretadores');

 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','t','f','1995-09-01','Creacion','','Pregrado',
'CI3725','','TRADUCTORES E INTERPRETADORES','5','Cortinas','t','t','t','Abr-Jul','1995','Incluir','Ingeniería de Computación','t','f','f','Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',17);
INSERT INTO R_PROG_PL VALUES('17','17');
INSERT INTO R_DEP_PL VALUES('17','dep-ci');
INSERT INTO R_PROF_PL VALUES('figueira','17','17');
INSERT INTO R_DEC_PL VALUES('17','dec-ep');
INSERT INTO RECHAZADOSDECAC VALUES('dec-ep','coord-comp',17,'Prueba rechazo de Decanato a Coord');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Traductores E Interpretadores.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('17','72');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Carlos Figueira.', now());
INSERT INTO R_BIT_PLAN values('17','73');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Carlos Figueira',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('17','74');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('17','75');

-- Validacion de Coordinacion a Decanato
insert into bitacora (usbid,comentario,fecha) values('Coordinación de Computación',
'Se validó el programa y se envió al Decanato correspondiente.', now());
INSERT INTO R_BIT_PLAN values('17','76');

-- Validacion de Decanato
insert into bitacora (usbid,comentario,fecha) values('Decanato de Estudios Profesionales',
'Se rechazó la solicitud de tipo Creacion enviada por la Coordinación con la siguiente observación: Prueba rechazo de Decanato a Coord.', now());
INSERT INTO R_BIT_PLAN values('17','77'); 



--- Rechazada a coord por departamento
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','1','3',
'Sep-Dic','2011',
'Este es un curso teórico­práctico que persigue finalizar al estudiante con aspectos de implementación de redes, con énfasis 
en los componentes de hardware, requeridos para la instalación de redes, el analisis y entonación de desempeño, así como 
aspectos relacionados con seguridad.','',
'',
'','','','','Esta materia se basa en la implementación de redes de computadoras');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','2010-07-02','Creacion','','Pregrado',
'CI5832','','REDES II','5','Audiovisual','t','t','t','Ene-Mar','2010','Incluir','Ingeniería de Computación','f','f','t',
'Electiva','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',18);
INSERT INTO R_PROG_PL VALUES('18','18');
INSERT INTO R_DEP_PL VALUES('18','dep-ci');
INSERT INTO R_DEC_PL VALUES('18','dec-ep');
INSERT INTO RECHAZADOSDaC VALUES('dep-ci','coord-comp',18,'Prueba rechazo dep-coord');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Redes II.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('18','78');
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se rechazó la solicitud de tipo Creacion enviada con la siguiente observación: Prueba rechazo dep-coord', now());
INSERT INTO R_BIT_PLAN values('18','79');

---********* Rechazada de profesor a departamento para reasignar (CP 16)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','0','3',
'Sep-Dic','2010',
'Estudiar, comprender y aprender la técnica de programación basada en Tipos de Datos Abstractos y 
desarrollar criterios para la comparación de soluciones codificadas en un lenguaje de programación.
',
'1.­ Clases y tipos de Datos Abstractos.
2.­ Memoria: Archivos.
3.­ Memoria: Manejo Dinámico.
4.­ Los Tipos Datos Abstractos: Secuencia, Lista, Pila, Cola y Árbol Binario.
5.­ Reexcursión.
6.­ Polimorfismo.
7.­ Herencia.
','','','','','','La asignatura debe impartir conocimientos intermedios sobre Computacion, especificamente tipos de datos abstractos');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','t','f','f','f','f','f','f','2010-07-02','Creacion','','Pregrado',
'CI2126','','COMPUTACIÓN II','4','Audiovisual','t','t','t','Ene-Mar','2010','Incluir','Ingeniería de Computación','f','f','t',
'Electiva','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',19);
INSERT INTO R_PROG_PL VALUES('19','19');
INSERT INTO R_DEP_PL VALUES('19','dep-ci');
--INSERT INTO R_PROF_PL VALUES('yudith','12','12'); Se borra con el rechazo
INSERT INTO R_DEC_PL VALUES('19','dec-ep');
INSERT INTO RECHAZADOSP VALUES('dep-ci','yudith',19,'Prueba de rechazo prof-dep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Computación II.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('19','80');

-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Yudith Cardinale.', now());
INSERT INTO R_BIT_PLAN values('19','81');

insert into bitacora (usbid,comentario,fecha) values('Yudith Cardinale',
'Se rechazó la asignación de la solicitud con la siguiente observación: Prueba de rechazo prof-dep. ', now());
INSERT INTO R_BIT_PLAN values('19','82');


--******* Asignada a profesor (CP 7 - Para rechazar)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','0','3',
'Sep-Dic','2010',
'Estudiar las diferentes técnicas de especificación de concurrencia intraproceso e interproceso.
Analizar la implementación de sistemas de operación bajo las técnicas de diseño estudiantes. Entre los 
sistemas de operación a estudiar se encuentran Minix, Xinu, Linux, Tunis, Amoeba, Mach, Chorus.
',
'','','','','','','Estudiar las técnicas comunmente utilizadas para diseñar sistemas de operación');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','2010-07-02','Creacion','','Pregrado',
'CI4821','','SISTEMAS DE OPERACIÓN II','4','Audiovisual','t','t','t','Ene-Mar','2010','Incluir','Ingeniería de Computación','f','f','t',
'Electiva','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',20);
INSERT INTO R_PROG_PL VALUES('20','20');
INSERT INTO R_DEP_PL VALUES('20','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','20','20');
INSERT INTO R_DEC_PL VALUES('20','dec-ep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Sistemas de Operación II.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('20','83');

-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Yudith Cardinale.', now());
INSERT INTO R_BIT_PLAN values('20','84');

--****** Por validar en departamento para rechazar (CP 13)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES('3','1','3','Sep-Dic','2001','Este es un curso teórico­práctico que persigue finalizar al estudiante con los elemnetos esenciales de diseño, 
instalación, administración y entonación de redes. Al finalizar el curso los estudiantes conocerán los elementos 
básicos de administración de redes y habran participado en la instalación y configuración de redes sencillas.
','',
'TEMA 1: Instalación y configuración básica de redes. Adaptadores de red y manejadores de dispositivos (“de vice drivers”). Tablas básicas de enrutamiento.
TEMA 2:   Servicios de nombres: DNS. Configuración y mantenimiento del software de DNS.
TEMA 3: Configuración y mantenimiento de servicios de comunicación: correo electrónico, news y www.
TEMA 4:  Algoritmos de enrutamiento. Protocolos de enrutamiento interiores: RIP y OSPF. Protocolos de enrutamiento exteriores: EGP, 
BGP. Enrutamiento entre dominios sin clase: CIDR. 
TEMA 6:   Seguridad. Criptografía, autentificación, “firewalls”.
','Estrategias del cuerso','Estrategias de evaluación','- Petterson, L. Y Davie, B. “Computer Networks: A Systems Approach”,Morgan Kaufmann Publishers, Inc, 199
- Tanembaum, A. “Computer Networks”, Tercera edición, Prentice Hall, 1996
','Ver en la pagina web del curso','Es una materia teorico-practica para que los estudiantes adquieran conocimientos basicos sobre la administración de redes');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','t','f','f','f','f','f','2001-07-02','Creacion','','Pregrado',
'CI5833','','REDES III','5','Cortinas','t','t','t','Ene-Mar','1999','Incluir','Ingeniería de Computación','f','f','f',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dpost','');
INSERT INTO R_Coord_pl VALUES('coord-comp',21);
INSERT INTO R_PROG_PL VALUES('21','21');
INSERT INTO R_DEP_PL VALUES('21','dep-ci');
INSERT INTO R_PROF_PL VALUES('figueira','21','21');
INSERT INTO R_DEC_PL VALUES('21','dec-ep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Redes III.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('21','85');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Carlos Figueira.', now());
INSERT INTO R_BIT_PLAN values('21','86');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Carlos Figueira',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('21','87');



---***** Rechazado en COORD por DPTO para reasignar (CP 47)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','1','3',
'Sep-Dic','2011',
'Prueba rechazo de Departamento a Coordinación','',
'',
'','','','','Prueba rechazo de Departamento a Coordinación');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','2010-07-02','Creacion','','Pregrado',
'CI1111','','PRUEBA RECHAZO','5','Audiovisual','t','t','t','Ene-Mar','2010','Incluir','Ingeniería de Computación','f','f','t',
'Electiva','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',22);
INSERT INTO R_PROG_PL VALUES('22','22');
INSERT INTO R_DEP_PL VALUES('22','dep-ci');
INSERT INTO R_DEC_PL VALUES('22','dec-ep');
INSERT INTO RECHAZADOSDaC VALUES('dep-ci','coord-comp',22,'Prueba rechazo dep-coord');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Prueba rechazo.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('22','88');
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se rechazó la solicitud de tipo Creacion enviada con la siguiente observación: Prueba rechazo dep-coord', now());
INSERT INTO R_BIT_PLAN values('22','89');


---**** Devuelto a coordinacion de dace (CP 48)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('3','0','0','Sep-Dic','1995',
'Objetivos generales',
'Objetivos específicos',
'Contenidos del curso', 
'Estrategias del curso',
'Evaluacion del curso',
'Fuentes del curso',
'Cronograma del curso',
'Prueba en Decanato');
 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','t','f','t','1995-09-01','Creacion','','Pregrado',
'CI2222','','PRUEBA DEVUELTA','3','Cortinas','t','t','t','Abr-Jul','1995','Incluir','Ingeniería de Computación','f','f','f',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',23);
INSERT INTO R_PROG_PL VALUES('23','23');
INSERT INTO R_DEP_PL VALUES('23','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','23','23');
INSERT INTO DEVUELTOSDACE VALUES('lpires','coord-comp',23,'Prueba devuelto de DACE a coord');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Prueba Devuelta.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('23','90');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Yudith Cardinale.', now());
INSERT INTO R_BIT_PLAN values('23','91');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Yudith Cardinale',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('23','92');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('23','93');

-- Validacion de Coordinacion a Decanato
insert into bitacora (usbid,comentario,fecha) values('Coordinación de Computación',
'Se validó el programa y se envió al Decanato correspondiente.', now());
INSERT INTO R_BIT_PLAN values('23','94');

insert into bitacora (usbid,comentario,fecha) values('Lucy Pires',
'Se devolvió el programa enviado con la siguiente observación: Prueba devuelto de DACE a coord.', now());
INSERT INTO R_BIT_PLAN values('23','95'); 


---**** Por validar en dec para rechazar (CP 43)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('3','0','0','Sep-Dic','1995',
'Prueba en Decanato',
'Prueba en Decanato',
'Contenidos del curso', 
'Estrategias del curso',
'Evaluacion del curso',
'Fuentes del curso',
'Cronograma del curso',
'Prueba en Decanato');
 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','t','f','f','f','t','f','1995-09-01','Creacion','','Pregrado',
'CI3333','','PRUEBA EN DECANATO','3','Cortinas','t','f','f','Abr-Jul','1995','Incluir','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',24);
INSERT INTO R_PROG_PL VALUES('24','24');
INSERT INTO R_DEP_PL VALUES('24','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','24','24');
INSERT INTO R_DEC_PL VALUES('24','dec-ep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Prueba en Decanato.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('24','96');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Yudith Cardinale.', now());
INSERT INTO R_BIT_PLAN values('24','97');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Yudith Cardinale',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('24','98');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('24','99');

-- Validacion de Coordinacion a Decanato
insert into bitacora (usbid,comentario,fecha) values('Coordinación de Computación',
'Se validó el programa y se envió al Decanato correspondiente.', now());
INSERT INTO R_BIT_PLAN values('24','100');

---**** Devuelto a decanato de dace (CP 48)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,
		      obj_g,obj_e,contenidos,estrategias, estrat_eval, fuentes,
		      cronograma, sinoptico) 
VALUES('3','0','0','Sep-Dic','1995',
'Objetivos generales',
'Objetivos específicos',
'Contenidos del curso', 
'Estrategias del curso',
'Evaluacion del curso',
'Fuentes del curso',
'Cronograma del curso',
'Prueba en Decanato');
 INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','t','f','t','1995-09-01','Creacion','','Pregrado',
'CI4444','','PRUEBA DEVUELTA A DECANATO','3','Cortinas','t','f','f','Abr-Jul','1995','Incluir','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',25);
INSERT INTO R_PROG_PL VALUES('25','25');
INSERT INTO R_DEP_PL VALUES('25','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','25','25');
INSERT INTO R_DEC_PL VALUES('25','dec-ep');
INSERT INTO DEVUELTOSDACE VALUES('lpires','dec-ep',25,'Prueba devuelto de DACE a dec');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Coordinación de Computación',
'Se creó una solicitud de Creacion de la asignatura con denominación: Prueba Devuelta a Decanato.
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('25','101');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Yudith Cardinale.', now());
INSERT INTO R_BIT_PLAN values('25','102');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Yudith Cardinale',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('25','103');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('25','104');

-- Validacion de Coordinacion a Decanato
insert into bitacora (usbid,comentario,fecha) values('Coordinación de Computación',
'Se validó el programa y se envió al Decanato correspondiente.', now());
INSERT INTO R_BIT_PLAN values('25','105');

-- Validacion de Decanato
insert into bitacora (usbid,comentario,fecha) values('Decanato de Estudios Profesionales',
'Se rechazó la solicitud de tipo Creacion enviada por la Coordinación con la siguiente observación: Prueba rechazo de Decanato a Coord.', now());
INSERT INTO R_BIT_PLAN values('25','106'); 

insert into bitacora (usbid,comentario,fecha) values('Lucy Pires',
'Se devolvió el programa enviado con la siguiente observación: Prueba devuelto de DACE a dec.', now());
INSERT INTO R_BIT_PLAN values('25','107'); 

--- Por validar en dec de departamento
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','1','3',
'Sep-Dic','2011',
'Objetivos generales',
'Objetivos específicos',
'Contenidos del curso', 
'Estrategias del curso',
'Evaluacion del curso',
'Fuentes del curso',
'Cronograma del curso',
'Prueba en Decanato');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','t','f','2010-07-02','Creacion','','Pregrado',
'CI5555','','PRUEBA DECANATO-DEPARTAMENTO','5','Audiovisual','t','t','t','Ene-Mar','2010','Incluir','Ingeniería de Computación','f','f','t',
'Electiva','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('dec-ep',26);
INSERT INTO R_PROG_PL VALUES('26','26');
INSERT INTO R_DEP_PL VALUES('26','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','26','26');
--INSERT INTO R_DEC_PL VALUES('26','dec-ep');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Decanato de Estudios Profesionales',
'Se creó una solicitud de Modificacion de la asignatura con denominación: Prueba Decanato-Departamento. 
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('26','108');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Yudith Cardinale.', now());
INSERT INTO R_BIT_PLAN values('26','109');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Yudith Cardinale',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('26','110');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('26','111');


----****** Rechazada por departamento a decanato para anular (CP 23)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','1','3',
'Sep-Dic','2011',
'Prueba rechazo de Departamento a Decanato','',
'',
'','','','','Prueba rechazo de Departamento a Coordinación');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','2010-07-02','Creacion','','Pregrado',
'CI8888','','PRUEBA RECHAZO','5','Audiovisual','t','t','t','Ene-Mar','2010','Incluir','Ingeniería de Computación','f','f','t',
'Electiva','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('dec-ep',27);
INSERT INTO R_PROG_PL VALUES('27','22');
INSERT INTO R_DEP_PL VALUES('27','dep-ci');
--INSERT INTO R_DEC_PL VALUES('27','dec-ep');
INSERT INTO RECHAZADOSDaC VALUES('dep-ci','dec-ep',27,'Prueba rechazo dep-dec');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Decanato de Estudios Profesionales',
'Se creó una solicitud de Modificacion de la asignatura con denominación: Prueba rechazo. 
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('27','112');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se rechazó la solicitud de tipo Modificacion enviada con la siguiente observación: Prueba rechazo dep-dec. ', now());
INSERT INTO R_BIT_PLAN values('27','113');


--- Por validar en dec de departamento
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','1','3',
'Sep-Dic','2011',
'Objetivos generales',
'Objetivos específicos',
'Contenidos del curso', 
'Estrategias del curso',
'Evaluacion del curso',
'Fuentes del curso',
'Cronograma del curso',
'Prueba en Decanato');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','t','f','2010-07-02','Creacion','','Pregrado',
'CI6666','','PRUEBA DECANATO-DEPARTAMENTO 2','5','Audiovisual','t','t','t','Ene-Mar','2010','Incluir','Ingeniería de Computación','f','f','t',
'Electiva','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('dec-ep',28);
INSERT INTO R_PROG_PL VALUES('28','28');
INSERT INTO R_DEP_PL VALUES('28','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','28','28');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Decanato de Estudios Profesionales',
'Se creó una solicitud de Modificacion de la asignatura con denominación: Prueba Decanato-Departamento 2. 
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('28','114');


-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se asignó la solicitud al profesor Yudith Cardinale.', now());
INSERT INTO R_BIT_PLAN values('28','115');

-- Llenado por parte del profesor
insert into bitacora (usbid,comentario,fecha) values('Yudith Cardinale',
'Se completó el programa y se envió de regreso al departamento para la validación.', now());
INSERT INTO R_BIT_PLAN values('28','116');

-- Validacion de Dpto
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'El Departamento validó el programa y se envió de regreso.', now());
INSERT INTO R_BIT_PLAN values('28','117');

----****** Rechazada por departamento a decanato para reasignar (CP 47)
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','1','3',
'Sep-Dic','2011',
'Prueba rechazo de Departamento a Decanato','',
'',
'','','','','Prueba rechazo de Departamento a Coordinación');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','2010-07-02','Creacion','','Pregrado',
'CI7777','','PRUEBA RECHAZO 2','5','Audiovisual','t','t','t','Ene-Mar','2010','Incluir','Ingeniería de Computación','f','f','t',
'Electiva','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('dec-ep',29);
INSERT INTO R_PROG_PL VALUES('29','29');
INSERT INTO R_DEP_PL VALUES('29','dep-ci');
--INSERT INTO R_DEC_PL VALUES('27','dec-ep');
INSERT INTO RECHAZADOSDaC VALUES('dep-ci','dec-ep',29,'Prueba rechazo dep-dec 2');

-- Creacion
INSERT INTO BITACORA (usbid,comentario,fecha) VALUES('Decanato de Estudios Profesionales',
'Se creó una solicitud de Modificacion de la asignatura con denominación: Prueba rechazo 2. 
Y se le asignó al Departamento de Computación y Tecnología de la Información.',now());
INSERT INTO R_BIT_PLAN values('29','118');

-- Asignacion a profesor
insert into bitacora (usbid,comentario,fecha) values('Departamento de Computación y Tecnología de la Información',
'Se rechazó la solicitud de tipo Modificacion enviada con la siguiente observación: Prueba rechazo dep-dec 2.', now());
INSERT INTO R_BIT_PLAN values('29','119');
