-- Encontrar el apellido, nombre, y promedio de porcentaje de tiros de campo de
-- todos los jugadores que tienen un porcentaje de tiros de campo mayor a 0.3 en
-- TODOS sus partidos.


SELECT p.apellido, p.nombre, AVG(jp.porcentajetiroscampo) AS promedio_tiros_campos
FROM juegapartido jp
INNER JOIN jugador j ON jp.idjugador = j.idpersona
INNER JOIN persona p ON j.idpersona = p.id
GROUP BY p.id
HAVING MIN(jp.porcentajetiroscampo) > 0.3


-- Resultados --

--		|	Apellido	|	Nombre		|	Promedio de Tiros
--	1	|	"Booth"		|	"Phil"		|	0.41000000000000000000
--	2	|	"Pargo"		|	"Jeremy"	|	0.48333333333333333333
--	3	|	"Rodriguez"	|	"Angel"		|	0.50000000000000000000
--	4	|	"Brown"		|	"Bryce"		|	0.33000000000000000000
--	5	|	"Ford"		|	"Jordan"	|	0.50000000000000000000