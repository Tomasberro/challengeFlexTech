 CREATE TABLE siglobis(
    id serial PRIMARY KEY ,
 	year DATE
)

INSERT INTO siglobis (year) VALUES ('1776-01-01');
INSERT INTO siglobis (year) VALUES ('2001-01-01');
INSERT INTO siglobis (year) VALUES ('1643-01-01');
INSERT INTO siglobis (year) VALUES ('1865-01-01');
INSERT INTO siglobis (year) VALUES ('1969-01-01');
--agregue mes y dia por el formato date de year
-- luego extraigo el siglo respectivo

select extract(century from year) from siglobis 

DROP TABLE siglobis;



