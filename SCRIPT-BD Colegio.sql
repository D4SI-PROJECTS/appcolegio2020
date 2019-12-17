create database bdcolegio2020;
use bdcolegio2020;

create table GRADO(
idgrado int primary key auto_increment,
seccion varchar(100)
);

create table ALUMNO(
idalumno int primary key auto_increment,
idgrado int not null,
nombre varchar(100),
apellido varchar(100),
telefono varchar(8),
estado tinyint(1) default true,

foreign key (idgrado) references GRADO (idgrado)
);

create table PROFESOR(
idprofesor int primary key auto_increment,
nombre varchar(100),
apellido varchar(100),
telefono varchar(8),
estado tinyint(1) default true
);

create table GRADO_PROFESOR(
idgrado int not null,
idprofesor int not null,

foreign key (idgrado) references GRADO (idgrado),
foreign key (idprofesor) references PROFESOR (idprofesor),
primary key (idgrado,idprofesor)
);

create table CURSO(
idcurso int primary key auto_increment,
idgrado int not null,
nombre varchar(50),

foreign key (idgrado) references GRADO (idgrado)
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