-- Encontrar periodo de competición, nombre de equipo y cantidad de entrenadores.
-- Devolviendo los 10 primeros equipos que más entrenadores tuvieron por periodo.
-- Además, en caso de empate, por orden alfabético del nombre del equipo.


SELECT epc.periodocompeticion, e.nombre, COUNT(DISTINCT epc.identrenador) AS cantidad_entrenadores
FROM entrenadorparticipacompeticion epc
INNER JOIN equipo e ON epc.idequipo = e.id
GROUP BY epc.periodocompeticion, e.nombre
ORDER BY cantidad_entrenadores DESC, e.nombre ASC
OFFSET 0 ROWS FETCH FIRST 10 ROWS ONLY


-- Resultados --

--		|	Periodo de Competición	|	Nombre			|	Cantidad de Entrenadores
--	1	|	"2018 - 2019"			|	"Bulls"			|	2
--	2	|	"2019 - 2020"			|	"Cavaliers"		|	2
--	3	|	"2018 - 2019"			|	"Cavaliers"		|	2
--	4	|	"2020 - 2021"			|	"Hawks"			|	2
--	5	|	"2021 - 2022"			|	"Kings"			|	2
--	6	|	"2019 - 2020"			|	"Knicks"		|	2
--	7	|	"2019 - 2020"			|	"Nets"			|	2
--	8	|	"2018 - 2019"			|	"Timberwolves"	|	2
--	9	|	"2020 - 2021"			|	"Timberwolves"	|	2
--	10	|	"2018 - 2019"			|	"76ers"			|	1