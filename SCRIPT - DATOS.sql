insert into GRADO values
(1,'3 años inicial A'),
(2,'3 años inicial B'),
(3,'3 años inicial C'),
(4,'4 años inicial A'),
(5,'4 años inicial B'),
(6,'4 años inicial C'),
(7,'5 años inicial A'),
(8,'5 años inicial B'),
(9,'5 años inicial C'),
(10,'1er grado de primaria A'),
(11,'1er grado de primaria B'),
(12,'1er grado de primaria C'),
(13,'1er grado de primaria D'),
(14,'2do grado de primaria A'),
(15,'2do grado de primaria B'),
(16,'2do grado de primaria C'),
(17,'2do grado de primaria D'),
(18,'3er grado de primaria A'),
(19,'3er grado de primaria B'),
(20,'3er grado de primaria C'),
(21,'3er grado de primaria D'),
(22,'4to grado de primaria A'),
(23,'4to grado de primaria B'),
(24,'4to grado de primaria C'),
(25,'4to grado de primaria D');

insert into ALUMNO values
(1,1,'Alex','Chiclayo','87456321',0),
(2,2,'Angel','Berrocal','69857413',0),
(3,3,'Jean','Castro','36985214',0),
(4,4,'Craig','Taipe','25413698',0),
(5,5,'Alex','Chiclayo','45781236',0);


insert into PROFESOR values
(1,'Oscar','Huayamares','98745632',0),
(2,'Roberto','Huasasquiche','45678124',0),
(3,'Carlos','Murillo','96385274',0),
(4,'Luis','Blanco','75348125',0),
(5,'Marcos','Gusman','14963257',0);

insert into GRADO_PROFESOR values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

insert into CURSO values
(1,1,'MATEMATICAS'),
(2,2,'COMPUTACION'),
(3,3,'INGLES'),
(4,4,'TUTORIA'),
(5,5,'ARTE');

insert into PROFESOR_CURSO values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

insert into NOTAXPERIODO values
(1,1,1,10.5),
(2,2,2,17.2),
(3,3,3,12.6),
(4,4,4,14.3),
(5,5,5,20);



insert into ASISTENCIA values
(1,1,1,default,0),
(2,2,2,default,0),
(3,3,3,default,0),
(4,4,4,default,0),
(5,5,5,default,0);