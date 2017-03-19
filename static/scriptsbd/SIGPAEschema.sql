DROP database GestionPAE;
CREATE DATABASE gestionpae;
\c gestionpae;

------------------ USUARIOS -----------------------------
-- Crea tabla usuario que es el papa de los usuarios
CREATE TABLE USUARIO(
    usbid 		VARCHAR(50) 	NOT NULL,
    clave 		VARCHAR(16) 	NOT NULL,
    nombre		VARCHAR(60)	NOT NULL,
    email       	VARCHAR(50)     NOT NULL,
    tipo 		VARCHAR(50) 	NOT NULL,
    
    CONSTRAINT PK_USUARIO PRIMARY KEY(usbid)
);

-- Crea tabla que guarda a los profesores
CREATE TABLE PROFESOR(
	usbid		VARCHAR(50)	NOT NULL,
	CONSTRAINT PK_PROFESOR PRIMARY KEY(usbid)
);

-- Crea tabla que guarda a los DPTOS
CREATE TABLE DEPARTAMENTO(
	usbid		VARCHAR(50)	NOT NULL,
	CONSTRAINT PK_DEPARTAMENTO PRIMARY KEY(usbid)
);

-- Crea tabla que guarda a las coordinaciones
CREATE TABLE COORDINACION(
    usbid        VARCHAR(50)	NOT NULL,
    codcar       VARCHAR              	,
    CONSTRAINT PK_COORDINACION PRIMARY KEY(usbid)

);

-- Crea tabla que guarda a los estudiantes
CREATE TABLE ESTUDIANTE(
	usbid		VARCHAR(50)	NOT NULL,
	cedula		VARCHAR(20)	NOT NULL,
	tipo_estudiante VARCHAR(50)	NOT NULL,
	CONSTRAINT PK_ESTUDIANTE PRIMARY KEY(usbid)
);

--------------------- PROGRAMA Y SOLICITUD -------------------
-- Crea tabla que tiene al programa completo asociado
CREATE TABLE PROGRAMA(
	id 		SERIAL 		NOT NULL,
	h_teoria	NUMERIC(2,0)		,
	h_prac		NUMERIC(2,0)		,
	h_lab		NUMERIC(2,0)		,				
	fecha_vigTrim	VARCHAR(8)		,
	fecha_vigAno	INT			,
   	obj_g 		VARCHAR			,
	obj_e 		VARCHAR			,
	contenidos	VARCHAR			,
	estrategias	VARCHAR			,
	estrat_eval	VARCHAR			,
	fuentes		VARCHAR			,
	cronograma	VARCHAR			,
	sinoptico	VARCHAR			,
	-- Demas datos necesarios estan en el join on Programa.id = Solicitud.id
  CONSTRAINT PK_PROGRAMA PRIMARY KEY(id)
);


-- Crea solicitud que es debil de programa
CREATE TABLE SOLICITUD(
    nomcoord		VARCHAR(50)	NOT NULL,
    
-- Datos (flags) para manejo de validaciones
    porasignar		BOOLEAN		NOT NULL, -- En un principio es true para que el departamento asigne profesor
    porvalidarD		BOOLEAN 	NOT NULL, -- Por validar en dpto
    porrevisarP		BOOLEAN 	NOT NULL, -- Por re-asignar profesor
    rechazadoC		BOOLEAN 	NOT NULL, -- Rechazado por coordinacion 
    validadoC		BOOLEAN		NOT NULL, -- Validado por coordinacion
    enviadoD		BOOLEAN		NOT NULL, -- Enviado por departamento
    devueltoDace	BOOLEAN		NOT NULL,
    -- Demas datos necesarios
    fechaelab 		DATE 		NOT NULL,
    tipo_solicitud 	VARCHAR(20)	NOT NULL,
    subtipo_solicitud	VARCHAR(30)	NOT NULL,
    nivel 		VARCHAR(20)	NOT NULL,
    cod		 	VARCHAR(7)	NOT NULL,
    cod_anterior 	VARCHAR(7)		,
    denominacion 	VARCHAR(70)	NOT NULL,
    creditos 		NUMERIC(2,0)	NOT NULL,
    tipo_aula 		VARCHAR(20)	NOT NULL,
    hteoria 		BOOLEAN		NOT NULL,
    hpractica 		BOOLEAN		NOT NULL,
    hlab 		BOOLEAN		NOT NULL,
    trime 		VARCHAR(8)	NOT NULL, -- Formato: Ene-Mar, Sep-Dic, Abr-Jul
    ano 		VARCHAR(4)	NOT NULL,
    accion 		VARCHAR(20)	NOT NULL, -- I,M,E
    afecta_carrera	VARCHAR(35)	NOT NULL, -- Nombre de carrera
    trimestrep		BOOLEAN		NOT NULL, -- True si es trimestre pensum 
    requisito_cre 	BOOLEAN		NOT NULL, -- Necesita creditos de req
    permiso_coord 	BOOLEAN		NOT NULL, -- Necesita permiso coord
    tipo_materia 	VARCHAR(20)	NOT NULL, --Obligatoria, electiva....
    clase_materia 	VARCHAR(25)	NOT NULL,
    -- prelaciones text,
   -- materiassinefecto text,
   -- materiasequivale text,
    observaciones 	VARCHAR			,
    vigente		BOOLEAN			,
    validadodace	BOOLEAN		NOT NULL,
    especial		BOOLEAN		NOT NULL,
    imparticion		VARCHAR(15)	NOT NULL,
    usbidec		VARCHAR(50)		,  
    obsanul		VARCHAR			,
   
   -- estado character varying(50),
   -- descripcion text,
   -- objetivog text,
   -- objetivoe text
    id 			SERIAL 		NOT NULL, -- Este viene de programa se supone que por ser debil creo primero el programa y no existe planilla 
    CONSTRAINT PK_PLANILLA PRIMARY KEY(id)
);


-- Relacion prof - planilla para simbolizar la asignacion por parte del dpto
CREATE TABLE R_Prof_Pl(
    usbid 		VARCHAR(50)	NOT NULL,
    id 			INT		NOT NULL,
    idplanilla 		INT		NOT NULL,
    CONSTRAINT PK_RPROFPLANILLA PRIMARY KEY(usbid,id)

);

-- Relacion Coord - planilla para simbolizar  la realizacion o creacion de la planilla (solicitud) y validacion
CREATE TABLE R_Coord_Pl(
    usbid 		VARCHAR(50)	NOT NULL,
    id 			INT 		NOT NULL,
    CONSTRAINT PK_RCOORDPLANILLA PRIMARY KEY(usbid,id)

);

-- Relacion Dep - profesor para que el departamento solo pueda asignar profesores adscritos a el
CREATE TABLE R_Prof_Dep(
    usbidp      	VARCHAR(50)     NOT NULL,
    usbidd      	VARCHAR(50)     NOT NULL,
    CONSTRAINT PK_RPROFDEP PRIMARY KEY(usbidp,usbidd)

);

-- Crea relacion de programa-planilla
CREATE TABLE R_PROG_PL(
      idplanilla	INT		NOT NULL,
      idprograma	INT 		NOT NULL,

      CONSTRAINT PK_RPROGPL PRIMARY KEY(idplanilla,idprograma)
);
-- 
CREATE TABLE R_DEP_PL(
      idplanilla 	INT		NOT NULL,
      usbidd		VARCHAR(50)	NOT NULL,
		
      CONSTRAINT PK_RDEPPL PRIMARY KEY(idplanilla,usbidd)

);


---------------------------Bitacora--------------------------------

CREATE TABLE BITACORA(
	id		SERIAL 			NOT NULL,
	usbid		VARCHAR(60)		NOT NULL,
	comentario	VARCHAR			NOT NULL,
	fecha		TIMESTAMP		NOT NULL,
	
	CONSTRAINT PK_BITACORA PRIMARY KEY(usbid,id,fecha,comentario)

);

CREATE TABLE R_BIT_PLAN (
	idplanilla 	INT			NOT NULL,
	idbitacora	INT			NOT NULL,


	CONSTRAINT PK_RBITPLAN PRIMARY KEY(idplanilla,idbitacora)

);


----------------------- Rechazos -------------------------------
CREATE TABLE RECHAZADOSP(

      usbidd		VARCHAR(50)		NOT NULL,
      usbidp		VARCHAR(50)		NOT NULL,
      id		INT			NOT NULL,
      observacionesrd	VARCHAR			NOT NULL,
      num		SERIAL			NOT NULL,
      CONSTRAINT PK_RECHAZADOSP PRIMARY KEY(num)

);

CREATE TABLE RECHAZADOSD(
     
      usbidd		VARCHAR(50)		NOT NULL,
      usbidp		VARCHAR(50)		NOT NULL,
      id		INT			NOT NULL,
      observacionesrd	VARCHAR			NOT NULL,
      num		SERIAL			NOT NULL,
      CONSTRAINT PK_RECHAZADOSD PRIMARY KEY(num)

);


CREATE TABLE RECHAZADOSDaC(
     
      usbidd		VARCHAR(50)		NOT NULL,
      usbidc		VARCHAR(50)		NOT NULL,
      id		INT			NOT NULL,
      observacionesrd	VARCHAR			NOT NULL,
      num		SERIAL			NOT NULL,
      CONSTRAINT PK_RECHAZADOSDaC PRIMARY KEY(num)

);


CREATE TABLE DEVUELTOSDACE(
     
      usbidDA		VARCHAR(50)	NOT NULL,
      usbidR		VARCHAR(50)	NOT NULL,
      id		INT		NOT NULL,
      observacionesrd	VARCHAR		NOT NULL,
      num		SERIAL		NOT NULL,
      CONSTRAINT PK_DEVUELTOSDACE PRIMARY KEY(num)

);

CREATE TABLE RECHAZADOSCaD(
     
      usbidc		VARCHAR(50)	NOT NULL,
      usbidd		VARCHAR(50)	NOT NULL,
      id		INT		NOT NULL,
      observacionesrd	VARCHAR		NOT NULL,
      num		SERIAL		NOT NULL,
      CONSTRAINT PK_RECHAZADOSCaD PRIMARY KEY(num)

);

----------------------------- Asignaturas --------------------

CREATE TABLE ASIGNATURA (
      codasig		VARCHAR		NOT NULL,
      nombre		VARCHAR		NOT NULL,
      tipo		VARCHAR(15)	NOT NULL,
      CONSTRAINT PK_ASIGNATURA PRIMARY KEY(codasig)

);

CREATE TABLE R_EST_PROG(
	usbid		VARCHAR		NOT NULL,
	id		INT		NOT NULL,

	CONSTRAINT PK_RESTPROG PRIMARY KEY(usbid,id)

);

-- Crea la tabla que tiene todas las carreras
CREATE TABLE CARRERA (

      codigo		VARCHAR		NOT NULL,
      nombre		VARCHAR		NOT NULL,
      
      CONSTRAINT PK_CARRERA PRIMARY KEY(codigo)

);

-- Crea la tabla de carreras con materias
CREATE TABLE R_CAR_MAT(

      codasig		VARCHAR(8)	NOT NULL,
      codcar		VARCHAR		NOT NULL,

      CONSTRAINT PK_CARMAT PRIMARY KEY(codasig,codcar)
);

-- Crea tabla de relacion de materias con materias de prerequisito
CREATE TABLE ES_REQUISITO (
      codpre		VARCHAR		NOT NULL,
      cod 		VARCHAR		NOT NULL,

      CONSTRAINT PK_ESREQUISITO PRIMARY KEY(codpre,cod)
);



----------------- PROGRAMAS TEMPORALES ----------------
-- Union de la solicitud, con el programa anterior y el temporal
CREATE TABLE PROG_TEMP(
      idprog 		INT 		NOT NULL,
      idtemp		INT		NOT NULL,
      idpla             INT            NOT NULL,
      CONSTRAINT PK_PROGTEMP PRIMARY KEY(idprog,idtemp,idpla)
);

-- Campos del programa temporal
CREATE TABLE PROGRAMAT(
  	id 		SERIAL 		NOT NULL,
	h_teoria	NUMERIC(2,0)		,
	h_prac		NUMERIC(2,0)		,
	h_lab		NUMERIC(2,0)		,				
	fecha_vigTrim	VARCHAR(8)		,
	fecha_vigAno	INT			,
   	obj_g 		VARCHAR			,
	obj_e 		VARCHAR			,
	contenidos	VARCHAR			,
	estrategias	VARCHAR			,
	estrat_eval	VARCHAR			,
	fuentes		VARCHAR			,
	cronograma	VARCHAR			,
	sinoptico	VARCHAR			,
  CONSTRAINT PK_PROGRAMAT PRIMARY KEY(id)
      

);

-- Profesor que llena el programa temporal
CREATE TABLE R_PROF_TEMP(
	idtemp		INT		NOT NULL,
	usbid		VARCHAR(30)	NOT NULL,
        idplanilla 	INT		NOT NULL,
	CONSTRAINT PK_RPROFTEMP PRIMARY KEY(idtemp,usbid)
);


----------------------- DECANATO -----------------------------

-- Crea tabla que guarda a los decanatos
CREATE TABLE DECANATO(
	usbid		VARCHAR(50)	NOT NULL,
	obligatorio 	boolean 	NOT NULL, -- Indica si deben pasar por ahi la solicitud
	CONSTRAINT PK_DECANATO PRIMARY KEY(usbid)
);

-- Planilla-Decanato para las materias especiales
CREATE TABLE R_DEC_PL(
      idplanilla 	INT		NOT NULL,
      usbiddec		VARCHAR(50)	NOT NULL,
		
      CONSTRAINT PK_RDECPL PRIMARY KEY(idplanilla,usbiddec)
);

-- Rechazados de decanato a coordinacion
CREATE TABLE RECHAZADOSDECAC(

      usbiddec		VARCHAR(50)	NOT NULL,
      usbidcor		VARCHAR(50)	NOT NULL,
      id		INT		NOT NULL,
      observacionesrd	VARCHAR		NOT NULL,
      num		SERIAL		NOT NULL,
      CONSTRAINT PK_RECHAZADOSDECAC PRIMARY KEY(num)

);

-- Asociacion de la coordinacion con sus decanatos
CREATE TABLE R_DEC_COOR(
      usbiddec         VARCHAR(50)     NOT NULL,
      usbidcoor        VARCHAR(50)	NOT NULL,

      CONSTRAINT PL_RDECCOOR PRIMARY KEY(usbiddec,usbidcoor)
);

--------------  PLANILLA CONGIGURACUION --------------

CREATE TABLE TIPO_MATERIA(
      nombre		VARCHAR(50)	NOT NULL,
      CONSTRAINT PK_TIPO_MATERIA PRIMARY KEY(nombre)
);

CREATE TABLE CLASE_MATERIA(
      nombre		VARCHAR(50)	NOT NULL,
      CONSTRAINT PK_CLASE_MATERIA PRIMARY KEY(nombre)
);

CREATE TABLE CAMPO_NIVEL(
      nombre		VARCHAR(50)	NOT NULL,
      CONSTRAINT PK_CAMPO_NIVEL PRIMARY KEY(nombre)
);

CREATE TABLE TIPO_AULA(
      nombre		VARCHAR(50)	NOT NULL,
      CONSTRAINT PK_TIPO_AULA PRIMARY KEY(nombre)
);

CREATE TABLE CAMPO_IMPARTIR(
      nombre		VARCHAR(50)	NOT NULL,
      CONSTRAINT PK_CAMPO_IMPARTIR PRIMARY KEY(nombre)
);

CREATE TABLE TRIMESTRE_VIGENCIA(
      mes_inicio	INT		NOT NULL,
      mes_fin		INT		NOT NULL,
      nombre		VARCHAR(50)	NOT NULL,
      CONSTRAINT PK_TRIMESTRE_VIGENCIA PRIMARY KEY(nombre)
);

----------------------------- HISTORICO -----------------------------

-- Programa historico
CREATE TABLE HISTORICO(
    
	id 		SERIAL 		NOT NULL,
	codasig		VARCHAR(8)	NOT NULL,
	nomasig		VARCHAR		NOT NULL,
	trimestrei	VARCHAR(8)	NOT NULL,
	anoi		INT 		NOT NULL,
	trimestref	VARCHAR(8)		,
	anof		INT 			,
	ruta		VARCHAR		NOT NULL,
  
	CONSTRAINT PK_HISTORICO PRIMARY KEY(id)
);

--- Estudiante asociado a historico-----
CREATE TABLE R_EST_HIST(
      usbid 		VARCHAR(50) 	NOT NULL,
      id		INT 		NOT NULL,

      CONSTRAINT PK_RESTHIST PRIMARY KEY(usbid,id)
    
);


-- Estadisticas sobre libros de programas generados --
CREATE TABLE GENERADOS(
	id		SERIAL		NOT NULL,
	fecha		DATE		NOT NULL,
	nro_pag		INT		NOT NULL,
	nro_prog	INT		NOT NULL,
	
	CONSTRAINT PK_GENERADOS PRIMARY KEY(id)
);