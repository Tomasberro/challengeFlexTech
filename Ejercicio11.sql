 CREATE TABLE personas(
    	id serial PRIMARY KEY ,
    	idnac integer,
		 name TEXT,
		 age INTEGER
  )
     CREATE TABLE nacionalidad(
    	id serial PRIMARY KEY ,
    	descendencia TEXT
 )

INSERT INTO personas (idnac, name, age) VALUES ('1','Bob','21');
INSERT INTO personas (idnac, name, age) VALUES ('1','Sam','19');
INSERT INTO personas (idnac, name, age) VALUES ('2','Jill','18');
INSERT INTO personas (idnac, name, age) VALUES ('3','Jim','21');
INSERT INTO personas (idnac, name, age) VALUES ('4','Sally','19');
INSERT INTO personas (idnac, name, age) VALUES ('2','Jess','20');
INSERT INTO personas (idnac, name, age) VALUES ('3','Will','21');

INSERT INTO nacionalidad (descendencia) VALUES ('Argentino');
INSERT INTO nacionalidad (descendencia) VALUES ('Italiano');
INSERT INTO nacionalidad (descendencia) VALUES ('Español');
INSERT INTO nacionalidad (descendencia) VALUES ('Aleman');


SELECT  id, name, age, descendencia from
(SELECT  personas.*, nacionalidad.descendencia from personas 
inner join nacionalidad 
on nacionalidad.id = personas.idnac) 
as final
--primero hago un inner join de personas con nacionalidad 
-- pasandole personas.*, nacionalidad.descendencia al select para evitar doble id ambiguo
--al final hago un subquery para tener los resultados pedidos

 DROP TABLE personas;
 DROP TABLE nacionalidad;



