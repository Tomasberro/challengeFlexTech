   CREATE TABLE pasaporte(
  	   	id serial PRIMARY KEY ,
  		name TEXT NOT NULL,
	  	country TEXT
 )

INSERT INTO pasaporte (name, country) VALUES ('Bob Smith', 'United States');
INSERT INTO pasaporte (name, country) VALUES ('Jim Jones', 'China');
INSERT INTO pasaporte (name, country) VALUES ('Sam White', 'Japan');
INSERT INTO pasaporte (name, country) VALUES ('Jess Black', 'Canada');
INSERT INTO pasaporte (name, country) VALUES ('Will Wilson', 'Germany');
INSERT INTO pasaporte (name, country) VALUES ('Wilson Scott', 'England');
INSERT INTO pasaporte (name, country) VALUES ('Scott Daniels', 'France');
INSERT INTO pasaporte (name, country) VALUES ('Daniel Jackson','Canada');
INSERT INTO pasaporte (name, country) VALUES ('Jack Johnson', 'United States');

SELECT name from pasaporte
where country <> 'United States' 
and country <> 'Canada'




 DROP TABLE pasaporte;



