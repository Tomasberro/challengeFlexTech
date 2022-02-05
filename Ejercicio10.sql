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



SELECT sum(age) from unicos;




 DROP TABLE unicos;



