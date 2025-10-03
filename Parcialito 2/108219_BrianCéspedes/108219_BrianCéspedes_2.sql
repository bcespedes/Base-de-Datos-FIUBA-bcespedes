-- Encontrar a todos los jugadores que jugaron en la temporada ‘2018 - 2019’ y
-- ‘2020 - 2021’ pero, no jugaron en la ‘2019 - 2020’ y no jugaron en la ‘2021 - 2022’.


SELECT p.id, p.nombre, p.apellido
FROM persona p
INNER JOIN jugadorparticipacompeticion jpc ON p.id = jpc.idjugador
GROUP BY p.id
HAVING COUNT(CASE WHEN jpc.periodocompeticion = '2018 - 2019' THEN 1 END) > 0
	AND COUNT(CASE WHEN jpc.periodocompeticion = '2020 - 2021' THEN 1 END) > 0
	AND COUNT(CASE WHEN jpc.periodocompeticion = '2019 - 2020' THEN 1 END) = 0
	AND COUNT(CASE WHEN jpc.periodocompeticion = '2021 - 2022' THEN 1 END) = 0


-- Resultados --

--		|	ID		|	Nombre		|	Apellido
--	1	|	1628959	|	"Rawle"		|	"Alkins"
--	2	|	1629053	|	"Vincent"	|	"Edwards"
--	3	|	203263	|	"James"		|	"Nunnally"
--	4	|	1628387	|	"Ike"		|	"Anigbogu"