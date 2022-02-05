CREATE TABLE divisiones(
	divisionId INTEGER ,
	year INTEGER,
	revenue INTEGER
  )
INSERT INTO divisiones (divisionid, year, revenue) VALUES ('1','2018','60');
INSERT INTO divisiones  (divisionid, year, revenue) VALUES ('1','2021','40');
INSERT INTO divisiones  (divisionid, year, revenue) VALUES ('1','2020','70');
INSERT INTO divisiones  (divisionid, year, revenue) VALUES ('2','2021','-10');
INSERT INTO divisiones  (divisionid, year, revenue) VALUES ('3','2018','20');
INSERT INTO divisiones  (divisionid, year, revenue) VALUES ('3','2016','40');
INSERT INTO divisiones  (divisionid, year, revenue) VALUES ('4','2021','50');

SELECT (divisionid) from divisiones
where year='2021' 
and revenue > 0;

DROP TABLE divisionid;



