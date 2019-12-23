CREATE DATABASE BDCOLEGIO;
USE BDCOLEGIO;

CREATE TABLE NIVEL(
idnivel int primary key auto_increment,
nivel varchar(50) not null,
estado tinyint(1) default true
);

CREATE TABLE GRADO(
idgrado int primary key auto_increment,
grado varchar(50) not null,
idnivel int not null,
estado tinyint(1) default true,

foreign key (idnivel) references NIVEL (idnivel)
);

CREATE TABLE SECCION(
idseccion int primary key auto_increment,
seccion varchar(50)not null,
idgrado int not null,
estado tinyint(1) default true,

foreign key (idgrado) references GRADO (idgrado)
);

CREATE TABLE ALUMNO(
idalumno int primary key auto_increment,
nombre varchar(100)not null,
apellido varchar(100)not null,
telefono varchar(9)not null,
idseccion int not null,
estado tinyint(1) default true,

foreign key (idseccion) references SECCION (idseccion)
);

create table PROFESOR(
idprofesor int primary key auto_increment,
nombre varchar(100),
apellido varchar(100),
telefono varchar(8),
estado tinyint(1) default true
);

create table GRADO_PROFESOR(
idseccion int not null,
idprofesor int not null,

foreign key (idseccion) references SECCION (idseccion),
foreign key (idprofesor) references PROFESOR (idprofesor),
primary key (idseccion,idprofesor)
);

create table CURSO(
idcurso int primary key auto_increment,
idseccion int not null,
nombre varchar(50),
estado tinyint(1) default true,
foreign key (idseccion) references SECCION (idseccion)
);

create table PROFESOR_CURSO(
idcurso int not null,
idprofesor int not null,

foreign key (idcurso) references CURSO (idcurso),
foreign key (idprofesor) references PROFESOR (idprofesor),
primary key (idcurso,idprofesor)
);

create table NOTAXPERIODO(
idperiodo int primary key auto_increment,
idcurso int not null,
idalumno int not null,
nota decimal(10,2),

foreign key (idcurso) references CURSO (idcurso),
foreign key (idalumno) references ALUMNO (idalumno)
);

create table ASISTENCIA(
idasistencia int primary key auto_increment,
idcurso int not null,
idalumno int not null,
ingreso timestamp default current_timestamp,
estado int default 1,

foreign key (idcurso) references CURSO (idcurso),
foreign key (idalumno) references ALUMNO (idalumno)
);

insert into NIVEL values
(null,'Inicial',default),(null,'Primaria',default),(null,'Secundaria',default);

insert into GRADO values
(null,'3 años',1,default),(null,'4 años',1,default),(null,'5 años',1,default),
(null,'1er grado',2,default),(null,'2do grado',2,default),(null,'3er grado',2,default),
(null,'4to grado',2,default),(null,'5to grado',2,default),(null,'6to grado',2,default),
(null,'1 año',3,default),(null,'2 año',3,default),(null,'3 año',3,default),
(null,'4 año',3,default),(null,'5 año',3,default);

insert into SECCION values
(null,'Azul',1,default),(null,'Verde',1,default),(null,'Rojo',1,default),
(null,'Azul',2,default),(null,'Verde',2,default),(null,'Rojo',2,default),
(null,'Azul',3,default),(null,'Verde',3,default),(null,'Rojo',3,default),
(null,'A',4,default),(null,'B',4,default),(null,'C',4,default),(null,'A',5,default),
(null,'B',5,default),(15,'C',5,default),(null,'A',6,default),(null,'B',6,default),
(null,'C',6,default),(null,'A',7,default),(null,'B',7,default),(null,'C',7,default),
(null,'A',8,default),(null,'B',8,default),(null,'C',8,default),(null,'A',9,default),
(null,'B',9,default),(null,'C',9,default),(null,'A',10,default),(29,'B',10,default),
(null,'C',10,default),(null,'A',11,default),(null,'B',11,default),(null,'C',11,default),
(null,'A',12,default),(null,'B',12,default),(36,'C',12,default),(null,'A',13,default),
(null,'B',13,default),(null,'C',13,default),(null,'A',14,default),(null,'B',14,default),(null,'C',14,default);

insert into ALUMNO values
(null,'alumno01','apellido01','123456781',2,default),
(null,'alumno02','apellido02','123456782',1,default),
(null,'alumno03','apellido03','123456783',2,default),
(null,'alumno04','apellido04','123456784',3,default),
(null,'alumno05','apellido05','123456785',5,default);

insert into CURSO values 
(null,2,'curso01',default),(null,4,'curso02',default),(null,2,'curso03',default),
(null,3,'curso04',default),(null,6,'curso05',default),(null,1,'curso06',default);

insert into NOTAXPERIODO values
(null,4,3,14),(null,4,3,16),(null,2,3,19),(null,2,2,20);

DELIMITER //
CREATE PROCEDURE sp_lista_notas()
BEGIN
  select n.idperiodo, c.nombre as curso, concat(a.apellido,' ',a.nombre) as alumno, n.nota from notaxperiodo n
	inner join curso c on n.idcurso = c.idcurso
	inner join alumno a on n.idalumno = a.idalumno;
END //
DELIMITER ;
