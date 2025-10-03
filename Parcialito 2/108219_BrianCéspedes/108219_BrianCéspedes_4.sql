-- Obtener el id del jugador, nombre, apellido y su estatura,
-- para los cuales realizaron más de 150 puntos y tienen un promedio
-- de asistencias de al menos 8.


SELECT p.id, p.nombre, p.apellido, j.estatura
FROM juegapartido jp
INNER JOIN jugador j ON jp.idjugador = j.idpersona
INNER JOIN persona p ON j.idpersona = p.id
GROUP BY p.id, j.estatura
HAVING SUM(jp.puntos) > 150 AND AVG(jp.asistencias) >= 8


-- Resultados --

--		|	ID		|	Nombre		|	Apellido	|	Estatura
--	1	|	1629027	|	"Trae"		|	"Young"		|	185.42
--	2	|	201935	|	"James"		|	"Harden"	|	195.58
--	3	|	201566	|	"Russell"	|	"Westbrook"	|	190.50