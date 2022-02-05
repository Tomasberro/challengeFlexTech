  CREATE TABLE numerosop(
    id serial PRIMARY KEY ,
     value INTEGER 	
    )
	
INSERT INTO numerosop (value) VALUES ('-56');
INSERT INTO numerosop (value) VALUES ('76');
INSERT INTO numerosop (value) VALUES ('-84');
INSERT INTO numerosop (value) VALUES ('96');
INSERT INTO numerosop (value) VALUES ('-47');
-- selecciono la col value y la multiplico por -1 
SELECT value, (value*-1) as opuesto from numerosop;

DROP TABLE numerosop;