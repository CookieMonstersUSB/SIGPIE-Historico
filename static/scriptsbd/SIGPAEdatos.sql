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
INSERT INTO ASIGNATURA VALUES ('CI2691','Laboratorio de Algoritmos y Estructuras I','Normal'); 
INSERT INTO ASIGNATURA VALUES ('CI2125','Computación I','Normal');
INSERT INTO ASIGNATURA VALUES ('EC5804','Tópicos Especiales en Robótica','Especial');

INSERT INTO R_CAR_MAT VALUES('CI2691','0800'); 
INSERT INTO R_CAR_MAT VALUES('CI2125','0800'); --Materia compartida
INSERT INTO R_CAR_MAT VALUES('CI2125','0600'); --Materia compartida
INSERT INTO R_CAR_MAT VALUES('EC5804','0800'); --Materia especial

----------------------------------------- FIN DE CARRERAS-ASIGNATURAS-DEPARTAMENTOS -------------------------------------
-- PROGRAMA DE: Redes I, por validar en departamento
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES('3','1','3','abr-jul','2001','Al finalizar
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
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','t','f','f','f','f','f','1999-07-02','Creacion','','Pregrado',
'CI4835','','Redes I','5','Cortinas','t','t','t','Ene-Mar','1999','i','Ingeniería de Computación','f','f','f',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dpost','');
INSERT INTO R_Coord_pl VALUES('coord-comp',1);
INSERT INTO R_PROG_PL VALUES('1','1');
INSERT INTO R_DEP_PL VALUES('1','dep-ci');
INSERT INTO R_PROF_PL VALUES('figueira','1','1');
INSERT INTO R_DEC_PL VALUES('1','dec-ep');

-- PROGRAMA DE: Laboratorio de Algoritmos y Estructuras I VIGENTE
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
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','1999-07-02','Creacion','','Pregrado',
'CI2691','','Laboratorio de Algoritmos y Estructuras I','2','Audiovisual','t','t','t','Ene-Mar','1999','i','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','t','t','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',2);
INSERT INTO R_PROG_PL VALUES('2','2');
INSERT INTO R_DEP_PL VALUES('2','dep-ci');
INSERT INTO R_PROF_PL VALUES('mvidal','2','2');
INSERT INTO R_DEC_PL VALUES('2','dec-ep');

-- PROGRAMA DE: Sistemas de Operacion I para llenar por Yudith
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','1','3',
'abr-jul','2000',
'Introducir los conceptos básicos de los sistemas de operación, con énfasis en los sistemas multiusuarios.',
'Comportamiento de un CPU mediante la multiprogamación y concurrencias con procesos y threads. Poíticas y 
mecanismos de despacho de programas.
Comportamiento de memoria principal. Uso de los registros base y límite. Manejo de la memoria virtual a través de la 
políticas y mecanismos de paginación y segmentación. Uso del Working Set.
Compartimiento de memoria secundaria. Uso de los sistemas archivos lógicos y físicos. Sistemas de nombres 
(directorio). Esquema básico de Protección de archivos.
Manejos de interbloqueo e inanición.','','','','','','Es una asignatura teorico practica para impartir los conocimientos basicos de los sitemas de operación y ponerlos en practica en un lenguaje de programación en el laboratorio');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','1993-07-02','Creacion','','Pregrado',
'CI3825','','Sistemas de Operación I','5','Cortinas','t','t','t','Ene-Mar','1993','i','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',3);
INSERT INTO R_PROG_PL VALUES('3','3');
INSERT INTO R_DEP_PL VALUES('3','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','3','3');
INSERT INTO R_DEC_PL VALUES('3','dec-ep');

-- PROGRAMA DE: Organizacion del computador POR ASIGNAR PROFESOR
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'4','0','2',
'abr-jul','1999',
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
'CI3815','','Organización del Computador','5','Cortinas','t','t','t','Ene-Mar','1999','i','Ingeniería de Computación','t','f','f',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',4);
INSERT INTO R_PROG_PL VALUES('4','4');
INSERT INTO R_DEP_PL VALUES('4','dep-ci');
INSERT INTO R_DEC_PL VALUES('4','dec-ep');

-- PROGRAMA DE: Computacion I VIGENTE
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
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','2002-07-02','Creacion','','Pregrado',
'CI2125','','Computación I','3','Cortinas','t','t','t','Ene-Mar','2002','i','Ingeniería de Computación','f','t','t',
'Obligatoria','Pregrado Regular','','t','t','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',5);
INSERT INTO R_PROG_PL VALUES('5','5');
INSERT INTO R_DEP_PL VALUES('5','dep-ci');
INSERT INTO R_PROF_PL VALUES('xiomara','5','5');
INSERT INTO R_DEC_PL VALUES('5','dec-ep');

-- PROGRAMA DE: Ingeniería de Software POR ASIGNAR PROFESOR
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','0','3',
'abr-jul','2001',
'El proceso de evolución y mantenimiento de software en el modelo de desarrollo iterativo incremental. 
Apectos sistémicos de la Ingeniería de Software. Efectividad y eficiencia. Metodologías de desarrollo. 
Elementos   del   trabajo   en   equipo   (teamwork)   y   control   de   proyectos.   Control   de   configuración. 
Herramientas de apoyo básico. ',
'',
'','','','','','Sinoptico del programa de Ingeniería de Software');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','t','f','f','f','f','f','f','1999-07-02','Creacion','','Pregrado',
'CI4712','','Ingeniería de Software II','5','Cortinas','t','t','t','Ene-Mar','1999','i','Ingeniería de Computación','f','f','t',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',6);
INSERT INTO R_PROG_PL VALUES('6','6');
INSERT INTO R_DEP_PL VALUES('6','dep-ci');
INSERT INTO R_DEC_PL VALUES('6','dec-ep');

-- PROGRAMA DE: Sistemas de Computacion Grafica para llenar por Yudith
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','0','3',
'abr-jul','2010',
'Proporcionar una introducción a la Computación Gráfica elemental. Capacitar para la selección y la aplicación 
Computación Gráfica disponible en el mercado. Capacitar para el diseño de una aplicación gráfica sencilla.',
'Proporcionar conocimientos básicos sobres las técnicas de computación gráfica estática en 2D y 3D. 
Proporcionar una visión sobre la estructura de un paquete gráfico, la realización de las primitivas de salida, las 
transformaciones, la visualización, el hardware gráfico y el modelaje matemático sencillo.','','','','','','Establecer los contenidos basicos asociados a la Computación Gráfica');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','f','f','f','f','f','f','2010-07-02','Creacion','','Pregrado',
'CI4321','','Computación Gráfica','4','Audiovisual','t','t','t','Ene-Mar','2010','i','Ingeniería de Computación','f','f','t',
'Electiva','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',7);
INSERT INTO R_PROG_PL VALUES('7','7');
INSERT INTO R_DEP_PL VALUES('7','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','7','7');
INSERT INTO R_DEC_PL VALUES('7','dec-ep');

-- PROGRAMA DE: Sistemas de Operacion I para validar a Dace desde coordinacion
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','1','3',
'abr-jul','2011',
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
'CI4325','','Interfaces con el usuario','5','Audiovisual','t','t','t','Ene-Mar','2010','i','Ingeniería de Computación','f','f','t',
'Electiva','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',8);
INSERT INTO R_PROG_PL VALUES('8','8');
INSERT INTO R_DEP_PL VALUES('8','dep-ci');
INSERT INTO R_PROF_PL VALUES('yudith','8','8');
INSERT INTO R_DEC_PL VALUES('8','dec-ep');

--- ESTUDIANTES CON PROGRAMAS ---
INSERT INTO R_EST_PROG VALUES('09-10816','2');
INSERT INTO R_EST_PROG VALUES('09-10816','5');


--- PROGRAMAS DE PRUEBA EN DECANATO -----
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','0','3',
'abr-jul','2001',
'El proceso de evolución y mantenimiento de software en el modelo de desarrollo iterativo incremental. 
Apectos sistémicos de la Ingeniería de Software. Efectividad y eficiencia. Metodologías de desarrollo. 
Elementos   del   trabajo   en   equipo   (teamwork)   y   control   de   proyectos.   Control   de   configuración. 
Herramientas de apoyo básico. ',
'',
'','','','','','Sinoptico del programa de Ingeniería de Software');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','t','f','f','f','t','f','1999-07-02','Creacion','','Pregrado',
'CI4713','','Ingeniería de Software II','5','Cortinas','t','t','t','Ene-Mar','1999','i','Ingeniería de Computación','f','f','t',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',9);
INSERT INTO R_PROG_PL VALUES('9','9');
INSERT INTO R_DEC_PL VALUES('9','dec-ep');

INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'3','0','3',
'abr-jul','2001',
'El proceso de evolución y mantenimiento de software en el modelo de desarrollo iterativo incremental. 
Apectos sistémicos de la Ingeniería de Software. Efectividad y eficiencia. Metodologías de desarrollo. 
Elementos   del   trabajo   en   equipo   (teamwork)   y   control   de   proyectos.   Control   de   configuración. 
Herramientas de apoyo básico. ',
'',
'','','','','','Sinoptico del programa de Ingeniería de Software');
INSERT INTO SOLICITUD VALUES('Coordinación de Computación','f','t','f','f','f','t','f','1999-07-02','Creacion','','Pregrado',
'CI4712','','Prueba en Decanato','5','Cortinas','t','t','t','Ene-Mar','1999','i','Ingeniería de Computación','f','f','t',
'Obligatoria','Pregrado Regular','','f','f','f','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',10);
INSERT INTO R_PROG_PL VALUES('10','10');
INSERT INTO R_DEC_PL VALUES('10','dec-ep');

-- PROGRAMA ESPECIAL VIGENTE
INSERT INTO PROGRAMA (h_teoria,h_prac,h_lab,fecha_vigTrim,fecha_vigAno,obj_g,obj_e,
contenidos,estrategias, estrat_eval, fuentes, cronograma, sinoptico) VALUES(
'2','0','2',
'sep-dic','1999',
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
'EC5804','','Tópicos Especiales en Robótica','3','Cortinas','t','t','t','Ene-Mar','2002','i','Ingeniería de Computación','f','t','t',
'Obligatoria','Pregrado Regular','','t','t','t','Presencial','dec-ep','');
INSERT INTO R_Coord_pl VALUES('coord-comp',11);
INSERT INTO R_PROG_PL VALUES('11','11');
INSERT INTO R_DEC_PL VALUES('11','dec-ep');


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
-- Forma de impartir
INSERT INTO CAMPO_IMPARTIR values('Presencial');
INSERT INTO CAMPO_IMPARTIR values('A distancia');
INSERT INTO CAMPO_IMPARTIR values('Mixta'); 
-- Trimestre de vigencia
INSERT INTO TRIMESTRE_VIGENCIA values(10,12,'Sep-Dic');
INSERT INTO TRIMESTRE_VIGENCIA values(01,03,'Ene-Mar');
INSERT INTO TRIMESTRE_VIGENCIA values(04,06,'Abr-Jul');