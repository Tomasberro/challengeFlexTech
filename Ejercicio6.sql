 CREATE TABLE saludos(
  	id serial PRIMARY KEY ,
  	name TEXT NOT NULL
 )

INSERT INTO saludos (name) VALUES ('Bob');
INSERT INTO saludos (name) VALUES ('Sam');
INSERT INTO saludos (name) VALUES ('Jill');
INSERT INTO saludos (name) VALUES ('Jim');
INSERT INTO saludos (name) VALUES ('Sally');
INSERT INTO saludos (name) VALUES ('Jess');
INSERT INTO saludos (name) VALUES ('Will');

Select * from saludos

-- ALTER TABLE SALUDOS
-- ADD Column saludo varchar(100);

do $$
declare 
		registro Record;
begin
	for registro in (select name from saludos) loop
	raise notice ':¡Hola: %! ¿Cómo estás hoy?', registro;
	end loop;
	
end $$

--hago un bucle for para recorrer la tabla saludos y mostrar los saludos
-- me imprime correctamente pero como Notice, me faltaria agregar la columna
-- saludo con esos resultados	
DROP TABLE saludos;



