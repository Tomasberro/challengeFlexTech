  CREATE TABLE pares(
     id serial PRIMARY KEY ,
  	value integer
 )

INSERT INTO pares (value) VALUES ('4');
INSERT INTO pares (value) VALUES ('11');
INSERT INTO pares (value) VALUES ('57');
INSERT INTO pares (value) VALUES ('24');
INSERT INTO pares (value) VALUES ('47');

-- select * from pares 
-- select mod(value,2) from pares; tabla 0 par y 1 impar
Select value,
	case when mod(value, 2)=0 then 'par'
	else 'impar'
	End as resultado
from pares

DROP TABLE pares;



