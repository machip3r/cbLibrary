create database biblioteca;
	use biblioteca;

create table autor(
 	id_autor int not null auto_increment,
 	autor varchar(200) not null,
 	constraint PKAutor primary key (id_autor)
);

create table categoria(
 	id_categoria smallint not null auto_increment,
 	categoria varchar(100) not null,
 	constraint PKCategoria primary key (id_categoria)
);

create table editorial(
 	id_editorial int not null auto_increment,
 	editorial varchar(100) not null,
 	constraint PKEditorial primary key (id_editorial)
);

create table usuario(
 	id_usuario int not null auto_increment,
 	lector varchar(200) not null,
 	usuario varchar(100) not null,
 	contrasena varchar(200) not null,
 	email varchar(250) not null,
 	administracion char(1) not null default 'f',
 	constraint PKUsuario primary key (id_usuario)
);

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

create table IF NOT EXISTS libro (
	id_libro int unsigned not null auto_increment,
  id_autor int not null,
  id_categoria smallint not null,
  id_editorial int not null,
  libro varchar(150) default null,
  tamanio int unsigned default null,
  tipo varchar(150) default null,
  nombre_archivo varchar(255) default null,
 	constraint PKLibro primary key (id_libro),
 	constraint FKAutor foreign key (id_autor) references autor(id_autor),
 	constraint FKCategoria foreign key (id_categoria) references categoria(id_categoria),
 	constraint FKEditorial foreign key (id_editorial) references editorial(id_editorial)
) ENGINE=InnoDB;

insert into usuario(lector, usuario, contrasena, email, administracion) values("Mac", "mac", SHA("mac"), "mac_258@hotmail.com", "t");
insert into usuario(lector, usuario, contrasena, email, administracion) values("CAPS", "caps", SHA("caps"), "cesaraxel24@outlook.com", "t");
insert into usuario(lector, usuario, contrasena, email, administracion) values("Dani", "dani", SHA("dani"), "daniela_30_4@gmail.com", "t");

insert into categoria(categoria) values('ADMINISTRACION');
insert into categoria(categoria) values('ELECTRICIDAD');
insert into categoria(categoria) values('OFIMATICA');
insert into categoria(categoria) values('PROGRAMACION');
insert into categoria(categoria) values('QUIMICA');
insert into categoria(categoria) values('SOPORTE Y MANTENIMIENTO DE COMPUTO');

insert into editorial (editorial) values ("ESTUDIANTIL");
insert into editorial (editorial) values ("MANUAL");

insert into autor(autor) values ('YO MERO');
insert into autor(autor) values ('ANDRES');
insert into autor(autor) values ('ARURO DIAZ ALONSO');
insert into autor(autor) values ('EVA GOMEZ BALLESTER');
insert into autor(autor) values ('CARLOS BEAS');
insert into autor(autor) values ('GEORGE H. FRIED');
insert into autor(autor) values ('ADELA CASTILLEJOS SALAZAR');
insert into autor(autor) values ('ANONIMO');
insert into autor(autor) values ('EVA GALLARDO');
insert into autor(autor) values ('ADIANA MARGARITA CASTRILLON ORTEGA');
insert into autor(autor) values ('CLIPEEAT');
insert into autor(autor) values ('ANDRES MARZAL');
insert into autor(autor) values ('ADRES MARZAL');
insert into autor(autor) values ('IDALBERTO CHIAVENATO');
insert into autor(autor) values ('BRANDON ');
insert into autor(autor) values ('SALVADOR GOMEZ OLIVER');
insert into autor(autor) values ('BADI');
insert into autor(autor) values ('ASDF');
insert into autor(autor) values ('RAUL ROMERO CABELLO');
insert into autor(autor) values ('LUIS JESUS PEREZ BADILLO');
insert into autor(autor) values ('STEVEN S. ZUMDAHL');
insert into autor(autor) values ('JAVIER CRUZ GUARDADO');
insert into autor(autor) values ('RAYMOND CHANG');
insert into autor(autor) values ('GABRIELA MOHINA');
insert into autor(autor) values ('ARTURO DIAZ ALONSO');
insert into autor(autor) values ('LEUNARD D. WHITE');
insert into autor(autor) values ('JOSE J. ALCAMIA JAIME');
insert into autor(autor) values ('ILUMINADA FUERTES FUERTES');
insert into autor(autor) values ('RAIMON SERRAHIMA FORMOSA');
insert into autor(autor) values ('VICENT ARAGO');
insert into autor(autor) values ('MARIO SPINA');
insert into autor(autor) values ('J. DAVID CABEDO SEMPER');
insert into autor(autor) values ('ENRIQUE LOPEZ MARIN');
insert into autor(autor) values ('ANTONIO VALLET BELLMUNT');
insert into autor(autor) values ('HECTOR EDUARDO MEDELLIN ANAYA');
insert into autor(autor) values ('C. GONZALEZ');
insert into autor(autor) values ('GRACIA MARIA GAGLIANO');
insert into autor(autor) values ('JOSE A. ALONSO');
insert into autor(autor) values ('MALLKU ERNESTO SOLDEVILA RAFFA');
insert into autor(autor) values ('ANDRES BECERRA SANDOVAL ');
insert into autor(autor) values ('BETINA CORSICO');
insert into autor(autor) values ('MARIA GUILLERMINA VOLONTE');
insert into autor(autor) values ('INMACULADA CONCEPCION SANCHEZ LOPEZ');
insert into autor(autor) values ('ALBERTO L. CAPPARELLI');
insert into autor(autor) values ('JUAN CARLOS AUTINO');
insert into autor(autor) values ('DENNIS TATIANA PATIñO SORIANO');
insert into autor(autor) values ('JOSE RIBELLES MIGUEL');
insert into autor(autor) values ('CARLES CAñO VALLS ');
insert into autor(autor) values ('FCO. JAVIER MARTINEZ DE PISON ASCACIBAR');
insert into autor(autor) values ('IBON LANDA MARTIN');
insert into autor(autor) values ('GUNNAR WOLF');
insert into autor(autor) values ('ASIER MARTINEZ RETENAGA');
insert into autor(autor) values ('ITALO DAFFRA');
insert into autor(autor) values ('RUBEN BERROCAL');
insert into autor(autor) values ('CARLOS BRYS');
insert into autor(autor) values ('EDWAR SHNAIDER PUENTES OSSA');
insert into autor(autor) values ('FERNANDO FERRER');
insert into autor(autor) values ('JAVIER CASTRILLO');
insert into autor(autor) values ('MATT SMITH');
insert into autor(autor) values ('CHRISTIAN CAWLEY');
insert into autor(autor) values ('CARMEN FERNANDEZ');
insert into autor(autor) values ('STIVEN ARMERO KREISBERGER');
insert into autor(autor) values ('EDGAR ALBERTO QUIROGA');
insert into autor(autor) values (' BLADIMIR ACOSTA LARA');
insert into autor(autor) values ('LADY ADA');
insert into autor(autor) values ('ALEJANDRO ARES');
insert into autor(autor) values ('THE MAGPI');
insert into autor(autor) values ('DON JOHNSON');

insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (12, 1, 2, 'INTRODUCCION A PROGRAMACION CON C', 10077310, 'application/pdf', 'Introduccion_A_La_Programacion_Con_C-Andres_Marzal-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (25, 3, 1, 'ADMINISTRACION BASICA', 833958, 'application/pdf', 'Administracion_Basica_I-Aruro_Diaz_Alonso-Fondo_Editorial.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (4, 1, 1, 'BASES DE DATOS I', 702789, 'application/pdf', 'Bases_De_Datos_I-Eva_Gomez_Ballester-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (5, 2, 1, 'BIOLOGIA MOLECULAR', 6724055, 'application/pdf', 'Biologia_molecular-Carlos_beas-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (6, 2, 1, 'BIOLOGIA', 18774101, 'application/pdf', 'Biologia-George_H._Fried-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (7, 2, 1, 'CONOCIMIENTOS FUNDAMENTALES DE QUIMICA', 3203171, 'application/pdf', 'Conocimientos_Fundamentales_De_Quimica-Adela_Castillejos_Salazar-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 3, 2, 'CONTABILIDAD FINANCIERA', 27072723, 'application/pdf', 'Contabilidad_financiera-Anonimo-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (9, 3, 1, 'FUNDAMENTOS ADMINISTRACION', 1308641, 'application/pdf', 'Fundamentos_Administracion-Eva_Gallardo-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (10, 3, 1, 'FUNDAMENTOS GENERALES DE ADMINISTRACION', 1021545, 'application/pdf', 'Fundamentos_Generales_De_Administracion-Adiana_Margarita_Castrillon_Ortega-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (11, 3, 2, 'INTRODUCCION A LA CONTABILIDAD', 9892994, 'application/pdf', 'Introduccion_a_la_contabilidad-CLIPEEAT-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (13, 1, 2, 'INTRODUCCION A LA PROGRAMACION CON PYTHON', 7762363, 'application/pdf', 'Introduccion_A_La_Programaion_Con_Python-Adres_Marzal-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (14, 3, 1, 'INTRODUCCION A LA TEORIA GENERAL DE LA ADMINISTRACION', 49906601, 'application/pdf', 'Introduccion_A_La_Teoria_General_De_La_Administracion-Idalberto_Chiavenato-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (15, 1, 2, 'JAVA LIBRERIA APACHE POI', 272304, 'application/pdf', 'Java_Libreria_ApachePOI-Braulio_Jose_Baca_Barbosa-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 2, 2, 'LA ORINA AL MICROSCOPIO', 19172350, 'application/pdf', 'La_orina_al_microscopio-Anonimo-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (16, 1, 2, 'MANUAL DE PROGRAMACION ANDROID', 2619166, 'application/pdf', 'Manual_Programacion_Android-Salvador_Gomez_Oliver-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (17, 1, 2, 'MODELADO Y DISENIO DE BASES DE DATOS', 2480694, 'application/pdf', 'Modelado_y_diseno_de_bases_de_datos-Luis_Jesus_Perez_Badillo-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (19, 2, 1, 'MICROBIOLOGIA Y PARASITOLOGIA HUMANA', 42549938, 'application/pdf', 'Microbiologia_y_parasitologia_humana-Raul_Romero_Cabello-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (20, 1, 2, 'MODELADO Y DISENO DE BASES DE DATOS', 2480694, 'application/pdf', 'Modelado_y_diseno_de_bases_de_datos-Luis_Jesus_Perez_Badillo-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (21, 2, 1, 'PRINCIPIOS DE QUIMICA', 43470382, 'application/pdf', 'Principios_De_Quimica-Steven_S_Zumdahl-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (22, 2, 1, 'QUIMICA GENERAL', 6219910, 'application/pdf', 'Quimica_General-Javier_Cruz_Guardado-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (23, 2, 1, 'QUIMICA GENERAL', 60953182, 'application/pdf', 'Quimica_General-Raymond_Chang-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (24, 2, 1, 'QUIMICA', 3382493, 'application/pdf', 'Quimica-Gabriela_Mohina-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 1, 2, 'TUTORIAL DE PERL', 284941, 'application/pdf', 'Tutorial_De_Perl-Anonimo-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (26, 3, 1, 'INTRODUCCION AL ESTUDIO DE LA ADMINISTRACION PUBLICA', 8391051, 'application/pdf', 'Introduccion_Al_Estudio_De_La_Administracion_Publica-Leunard_D_White-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (27, 3, 1, 'CONTABILIDAD FINANCIERA I', 2569501, 'application/pdf', 'Contabilidad_Financiera_I-Jose_J._Alcamia_Jaime-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (28, 3, 2, 'CONTABILIDAD FINANCIERA I TEORIA Y EJERCICIOS', 7729879, 'application/pdf', 'Contabilidad_Financiera-I_teoria_y_ejercicios-Iluminada_Fuertes_Fuertes-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (29, 3, 2, 'CUADERNO DE INICIACION A LA CONTABILIDAD ', 27810770, 'application/pdf', 'Cuaderno_de_iniciacion_a_la_contabilidad-Raimon_Serrahima_Formosa-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (30, 3, 1, 'DIRECCION FINANCIERA DE LA EMPRESA', 7205758, 'application/pdf', 'Direccion_Financiera_de_la_empresa-Vicent_Arago-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (31, 3, 2, 'EMPRENDER DESDE CERO', 1300251, 'application/pdf', 'Emprender_desde_cero-Mario_Spina-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (32, 3, 1, 'INTRODUCCION A LA MATEMATICA FINANCIERA', 13391630, 'application/pdf', 'Introduccion_a_la_matematica_financiera-J._David_Cabedo_Semper-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (33, 3, 2, 'LA ADMINISTRACION PUBLICA Y EL DISEñO', 1332104, 'application/pdf', 'La_Administracion_Publica_y_el_diseno-Enrique_Lopez_Marin-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (34, 3, 1, 'PRINCIPIOS DE MARKETING ESTRATEGICO', 16097721, 'application/pdf', 'Principios_de_marketing_estrategico-Antonio_Vallet_Bellmunt-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (35, 1, 1, 'APUNTES DE LA MATERIA DE PROGRAMACION BASICA', 799398, 'application/pdf', 'Apuntes_de_la_materia_de_programacion_basica-Hector_Eduardo_Medellin_Anaya-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (36, 1, 2, 'DESARROLLO DE VIDEOJUEGOS ENFOQUE PRACTICO', 13700013, 'application/pdf', 'desarrollo-de-videojuegos-enfoque-practico-vol-2_C.-Gonzalez_Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (37, 1, 1, 'ELEMENTOS ESENCIALES PARA PROGRAMACION: ALGORITMOS Y ESTRUCTURAS DE DATOS', 3886089, 'application/pdf', 'Elementos-esenciales-para-programacion-algoritmos-y-estructuras-de-datos_Gracia-Maria-Gagliano_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (38, 1, 1, 'EXAMENES DE PROGRAMACION FUNCIONAL CON HASKELL', 846324, 'application/pdf', 'Examenes-de-programacion-funcional-con-Haskell_Jose-A.-Alonso_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (39, 1, 2, 'FORMALIZACION DE LA SEMANTICA DEL LENGUAJE DE PROGRAMACION LUA', 1076895, 'application/pdf', 'Formalizacion-de-la-semantica-del-lenguaje-de-programacion-Lua_Mallku-Ernesto-Soldevila-Raffa_Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (40, 1, 1, 'INTODUCCION A LA PROGRAMACIN CN PYTHON', 2019227, 'application/pdf', 'Introduccion-a-la-programacion-con-Python_Andres-Becerra-Sandoval_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 1, 1, 'PROGRAMACION ROBOTICA Y PENSAMIENTO COMPUTACIONAL EN EL AULA', 1195033, 'application/pdf', 'Programacio_robotica_y_pensamiento_computacional_en_el_aula-Anonimo-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (41, 2, 1, 'ANALISIS ESTRUCTURAL Y FUNCIONAL DE MACROMOLECULAS ', 11213924, 'application/pdf', 'analisis-estructural-y-funcional-de-macromoleculas_Betina-Corsico_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (42, 2, 1, 'ANALISIS FARMACEUTICO', 4405203, 'application/pdf', 'analisis-farmaceutico_Maria-Guillermina-Volonte_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (43, 2, 1, 'CUBISISTEMA DE LOS ELEMENTOS QUIMICOS', 2811880, 'application/pdf', 'Cubisistema-de-los-elementos-quimicos_Inmaculada-Concepcion-Sanchez-Lopez_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (44, 2, 1, 'FISICOQUIMICA BASICA ', 11789341, 'application/pdf', 'fisicoquimica-basica_Alberto-L.-Capparelli_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (45, 2, 1, 'INTORDUCCION A LA QUIMICA ORGANICA', 3103941, 'application/pdf', 'introduccion-a-la-quimica-organica_Juan-Carlos-Autino_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (46, 2, 1, 'QUIMICA COMPUTACIONAL EDUCATIVA', 1558436, 'application/pdf', 'quimica-computacional-educativa_Dennis-Tatiana-Patinio-Soriano_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (47, 6, 2, '100 EJERCICIOS RESUELTOS DE SISTEMAS OPERATIVOS ', 2056090, 'application/pdf', '100-ejercicios-resueltos-de-sistemas-operativos_Jose-Ribelles-Miguel_Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (48, 6, 2, 'CAPTURA Y EDICION DE AUDIO CON SOFTWARE LIBRE', 1683214, 'application/pdf', 'captura_y_edicion_de_audio_con_software_libre-Carles_Canio_Valls-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (49, 6, 1, 'CUADERNOS PRACTICAS INFORMATICA INDUSTRIAL', 1301191, 'application/pdf', 'Cuadernos-Practicas-Informatica-Industrial_Fco.-Javier-Martinez-de-Pison-Ascacibar_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (50, 6, 1, 'DISEñO Y HERRAMIENTAS', 3086279, 'application/pdf', 'Diseno-y-Herramientas_Ibon-Landa-Martin_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (51, 6, 2, 'FUNDAMENTOS DE SISTEMAS OPERATIVOS', 12042469, 'application/pdf', 'Fundamentos_de_sistemas_operativos-Gunnar_Wolf-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (52, 6, 2, 'GUIA DE TOMA DE EVIDENCIAS EN ENTORNOS WINDOWS', 2025308, 'application/pdf', 'Guia-de-toma-de-evidencias-en-entornos-windows_Asier-Martinez-Retenaga_Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (53, 6, 1, 'HISTORIA DE LA INDUSTRIA INFORMATICA ARGENTINA', 11780432, 'application/pdf', 'Historia-de-la-industria-informatica-argentina_Italo-Daffra_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (54, 6, 1, 'INFORMATICA COMO HERRAMIENTA DIDACTICA', 8944612, 'application/pdf', 'Informatica-como-herramienta-didactica_Ruben-Berrocal_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (55, 6, 1, 'INTRODUCCION A LA INFORMATICA', 6203752, 'application/pdf', 'Introduccion-a-la-Informatica_Carlos-Brys_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (56, 6, 2, 'LINUX SISTEMA OPERATIVO Y SERVICIOS', 10102142, 'application/pdf', 'Linux-sistema-operativo-y-servicios_Edwar-Shnaider-Puentes-Ossa_Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (57, 6, 1, 'SERVIDORES WINDOWS', 2974504, 'application/pdf', 'Servidores_Windows-Fernando_Ferrer-Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (58, 6, 1, 'SISTEMAS- OPERATIVOS EN LAS NETBOOKS', 2796194, 'application/pdf', 'sistemas-operativos-en-las-netbooks_Javier-Castrillo_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (59, 6, 2, 'WINDOWS 7 GUIDE', 2979268, 'application/pdf', 'Windows_7_Guide-Matt_Smith-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (60, 6, 2, 'WINDOWS 8 GUIDE', 1769525, 'application/pdf', 'Windows_8_Guide-Christian_Cawley-Manual.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (50, 6, 1, 'WINDOWS AZURE APPFABRIC', 2750278, 'application/pdf', 'Windows-Azure-AppFabric_Ibon-Landa-Martin_Estudiantil.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 4, 2, 'MANTENIMIENTO PREVENTIVO AL EQUIPO DE COMPUTO', 358474, 'application/pdf', '9.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (61, 4, 2, 'MANUAL DE PROCEDIMIENTOS PARA SOPORTE TECNICO', 100247, 'application/pdf', 'A2_MANUAL_PROCEDIMIENTOS_SOPORTE_TECNICO.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (62, 4, 1, 'MANTENIMIENTO DE COMPUTADORES', 9361292, 'application/pdf', 'articles-12648_recurso_PDF.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 4, 2, 'GUIA DE RESOLUCION DE PROBLEMAS Y MANTENIMIENTO DEL PC ', 151208, 'application/pdf', 'c00772999.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 4, 1, 'SOPORTE TéCNICO Y MANTENIMIENTO, CONFIGURACIóN DE EQUIPOS DE COMPUTACIóN', 2624751, 'application/pdf', 'computadora-mantenimiento.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 4, 2, 'MANTENIMIENTO DE EQUIPOS DE CÓMPUTO', 278422, 'application/pdf', 'DOCUMENTO DE APOYO No. 1 DEFINICION Y CLASIFICACION MANTENIMIENTO DE EQUIPOS DE COMPUTO.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (63, 4, 1, 'ENSAMBLE Y MANTENIMIENTO DE COMPUTADORES', 4882199, 'application/pdf', 'DOCUMENTO DE APOYO No. 25.3 ENSAMBLE Y MANTENIMIENTO DE COMPUTADORES-UNAD.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 4, 1, 'MANTENIMIENTO DE EQUIPOS DE CÓMPUTO', 12971108, 'application/pdf', 'informatica-16.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (64, 4, 1, 'LA IMPORTANCIA DEL MANTENIMIENTO PREVENTIVO A LOS EQUIPOS DE CÓMPUTO', 732920, 'application/pdf', 'La importancia del mantenimiento preventivo a los equipos de computo.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 4, 2, 'MANUAL DE PROCEDIMIENTOS DEPARTAMENTO DE HARDWARE Y REDES ', 309051, 'application/pdf', 'm_pro_d_hard_red4.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 4, 2, 'MANUAL DE MANTENIMIENTO DE PCS E INTRODUCCIóN A REDES', 3235880, 'application/pdf', 'mantenimiento-win7.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 4, 2, 'MANUAL DE MANTENIMIENTO Y REPARACIóN DE PC´S', 3518832, 'application/pdf', 'modulo_de_mantenimiento_de_pc.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 4, 2, 'REPARACIóN Y MANTENIMIENTO DE EQUIPO DE COMPUTO ', 201495, 'application/pdf', 'opensolution_modif.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 4, 2, 'MANUAL DE MANTENIMIENTO DE PC', 1957888, 'application/pdf', 'pc.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 4, 2, 'MANTENIMIENTO PREVENTIVO Y CORRECTIVO DE EQUIPOS DE CÓMPUTO', 245190, 'application/pdf', 'pe-in-t01_mantenimiento_preventivo_y_correctivo_de_equipos_de_computo_0.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (65, 5, 1, 'E IS FOR ELECTRONICS', 3407259, 'application/pdf', 'e-is-for-electronics.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (66, 5, 2, ' ELECTRóNICA IMPRESA FLEXIBLE APLICADA A LA SEGURIDAD INDUSTRIAL', 4777859, 'application/pdf', 'Electronica-EPIX.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (8, 5, 1, 'ELECTRONICS', 33624171, 'application/pdf', 'Electronics-Wikibooks.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (67, 5, 1, 'SIMPLE ELECTRONICS WITH GPIO ZERO', 6314643, 'application/pdf', 'Essentials-GPIOZero-v1.pdf');
insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values (68, 5, 1, 'FUNDAMENTALS OF ELECTRICAL ENGINEERING I', 2521946, 'application/pdf', 'fundamentals-of-electrical-engineering-OpenStax.pdf');
