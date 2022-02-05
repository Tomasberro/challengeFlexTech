    CREATE TABLE unicos(
   	   	id serial PRIMARY KEY ,
   		name TEXT NOT NULL,
 	  	age INTEGER
)

INSERT INTO unicos (name, age) VALUES ('Bob', '21');
INSERT INTO unicos (name, age) VALUES ('Sam', '19');
INSERT INTO unicos (name, age) VALUES ('Jill', '18');
INSERT INTO unicos (name, age) VALUES ('Jim', '21');
INSERT INTO unicos (name, age) VALUES ('Sally', '19');
INSERT INTO unicos (name, age) VALUES ('Jess', '20');
INSERT INTO unicos (name, age) VALUES ('Will', '21');

create or replace function Cantidad(num int) returns integer
as
$$
Select count  from (
SELECT age, count(*)
from unicos
group by age) as cant
WHERE age = $1
$$
Language SQL
--selecciono la columna count del subquery realizado a edades contadas
-- donde coincida el id con el input de la funcion
SELECT Cantidad(19)

DROP TABLE unicos; 



