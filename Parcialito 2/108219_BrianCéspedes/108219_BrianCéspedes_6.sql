-- Encontrar aquellos equipos que hayan ganado TODOS los premios posibles.


SELECT e.id, e.nombre
FROM equipo e
INNER JOIN premiocolectivo pc1 ON e.id = pc1.idequipo
GROUP BY e.id
HAVING COUNT(DISTINCT pc1.nombrepremio) = (
	SELECT COUNT(DISTINCT pc2.nombrepremio)
	FROM premiocolectivo pc2
)


-- Resultados --

--		|	ID			|	Nombre
--	1	|	1610612744	|	"Warriors"