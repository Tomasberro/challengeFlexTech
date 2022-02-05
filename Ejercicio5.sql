 CREATE TABLE edades(
  	id serial PRIMARY KEY ,
  	name TEXT NOT NULL,
 	age integer
 )

INSERT INTO edades (name, age) VALUES ('Bob','21');
INSERT INTO edades (name, age) VALUES ('Sam','19');
INSERT INTO edades (name, age) VALUES ('Jill','18');
INSERT INTO edades (name, age) VALUES ('Jim','21');
INSERT INTO edades (name, age) VALUES ('Sally','19');
INSERT INTO edades (name, age) VALUES ('Jess','20');
INSERT INTO edades (name, age) VALUES ('Will','21');

SELECT age, count(*)
from edades
group by age
order by age ;

DROP TABLE edades;



