-- Se necesita saber los equipos que hicieron menor cantidad de puntos siendo locales,
-- para el año 2018. Devolviendo la fecha del partido, el nombre del equipo y
-- la cantidad de puntos.


SELECT p1.fecha, e.nombre, p1.puntoslocal
FROM partido p1
INNER JOIN equipo e ON p1.idequipolocal = e.id
WHERE EXTRACT(YEAR FROM p1.fecha) = 2018
AND p1.puntoslocal = (
	SELECT MIN(p2.puntoslocal)
	FROM partido p2
	WHERE EXTRACT(YEAR FROM p2.fecha) = 2018
)


-- Resultados --

--		|	Fecha			|	Nombre	|	Puntos de Local
--	1	|	"2018-12-08"	|	"Bulls"	|	77