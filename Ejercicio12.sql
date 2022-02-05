 CREATE TABLE personas(
    	id serial PRIMARY KEY ,
    	idnac integer,
		 name TEXT,
		 age INTEGER
  )
    CREATE TABLE vencimiento(
      	id INTEGER ,
 	   fvto VARCHAR(50)
     )

INSERT INTO personas (idnac, name, age) VALUES ('1','Bob','21');
INSERT INTO personas (idnac, name, age) VALUES ('1','Sam','19');
INSERT INTO personas (idnac, name, age) VALUES ('2','Jill','18');
INSERT INTO personas (idnac, name, age) VALUES ('3','Jim','21');
INSERT INTO personas (idnac, name, age) VALUES ('4','Sally','19');
INSERT INTO personas (idnac, name, age) VALUES ('2','Jess','20');
INSERT INTO personas (idnac, name, age) VALUES ('3','Will','21');

INSERT INTO vencimiento (id, fvto) VALUES ('1','1/10/23');
INSERT INTO vencimiento (id, fvto) VALUES ('2','22/5/25');
INSERT INTO vencimiento (id, fvto) VALUES ('5','22/1/23');
INSERT INTO vencimiento (id, fvto) VALUES ('6','15/6/28');


SELECT  id, name, age, fvto from
 (SELECT  personas.*, vencimiento.fvto from personas 
 left join vencimiento 
 on vencimiento.id = personas.id
 order by id) 
as final
--primero hago un left join de personas con vencimiento 
-- pasandole personas.*, vencimiento.fvto al select para evitar doble id ambiguo
--al final hago un subquery para tener los resultados pedidos

DROP TABLE personas;
DROP TABLE vencimiento; 



