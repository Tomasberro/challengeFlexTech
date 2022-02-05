
create or replace function Fecha(date) returns text
as
$$
Select extract (dow from $1)
$$
Language SQL
SELECT Fecha('2022-01-29')
-- resultado 3 corresponde a Miercoles
-- dow me trae los dias de la semana por numeros, empezando
-- el Domingo en 0, y terminando el Sabado en 6
--  DROP TABLE ;



