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

Select * from personas
Select * from vencimiento

create or replace function PersonaDelete(int) returns integer
as $$
declare
	a int;
	res int := 0 ;
begin
	a := $1;
	if (select id from personas where id= $1 ) then
	delete from personas where id = $1;
	delete from vencimiento where vencimiento.id = $1;
	res := 0;
	else 
	res := -1;
 	end if;
 	return res;
end;
$$
Language plpgsql;
--si coincide el id de personas con el input de la funcion lo borra
-- al registro correspondiente a tabla personas, me faltaria borrar
-- el registro de la tabla vencimiento
SELECT PersonaDelete (1)
SELECT PersonaDelete (50)

DROP TABLE personas;
DROP TABLE vencimiento;




