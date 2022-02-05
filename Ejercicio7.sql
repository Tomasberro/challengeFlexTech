  CREATE TABLE ventas(
 	   	id serial PRIMARY KEY ,
 		name TEXT NOT NULL,
 	 	amount INTEGER
  )

INSERT INTO ventas (name, amount) VALUES ('Cup', '11');
INSERT INTO ventas (name, amount) VALUES ('Saucer', '22');
INSERT INTO ventas (name, amount) VALUES ('Plate', '46');
INSERT INTO ventas (name, amount) VALUES ('Fork', '34');
INSERT INTO ventas (name, amount) VALUES ('Spoon', '45');
INSERT INTO ventas (name, amount) VALUES ('Knife', '78');
INSERT INTO ventas (name, amount) VALUES ('Mug', '23');
INSERT INTO ventas (name, amount) VALUES ('Glass', '64');
INSERT INTO ventas (name, amount) VALUES ('Tumbler', '24');

SELECT amount from ventas
order by amount desc
limit 5;



DROP TABLE ventas;



