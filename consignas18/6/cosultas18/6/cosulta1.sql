/*1.Mostrar la cantidad de estaciones totales.*/
select count(DISTINCT NOMBRE_ESTACION) as estaciones from barcelona_viajeros_por_franja_xlsx

/*2.Mostrar un listado de estaciones único.*/
select DISTINCT NOMBRE_ESTACION as estaciones from barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION

/*3.Al listado obtenido adicionar una columna con el total de pasajeros 
subidos y otra con el total de pasajeros que bajaron.*/
select NOMBRE_ESTACION, sum(DISTINCT VIAJEROS_BAJADOS),sum(VIAJEROS_SUBIDOS) from barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION

/*4.A la consulta anterior adicionar una columna que muestre la diferencia entre
 los pasajeros que subieron y bajaron.*/
select NOMBRE_ESTACION, sum(DISTINCT VIAJEROS_BAJADOS) ,sum(VIAJEROS_SUBIDOS), (VIAJEROS_BAJADOS - VIAJEROS_SUBIDOS) as diferencia    from barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION

/*5.Mostrar cuál fue la estación que más pasajeros subieron por tramo horario*/
select TRAMO_HORARIO,NOMBRE_ESTACION, VIAJEROS_SUBIDOS from barcelona_viajeros_por_franja_xlsx
GROUP by TRAMO_HORARIO
ORDER by VIAJEROS_SUBIDOS DESC

/*6.Mostrar cuál fue la estación que más pasajeros subieron en el dia*/
select NOMBRE_ESTACION, sum(VIAJEROS_SUBIDOS)as pasajerosSubidos from barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION
ORDER by pasajerosSubidos DESC
LIMIT 1

/*7.Mostrar cuál fue la estación que más pasajeros bajaron por tramo horario*/
select TRAMO_HORARIO,NOMBRE_ESTACION, VIAJEROS_BAJADOS from barcelona_viajeros_por_franja_xlsx
GROUP by TRAMO_HORARIO
ORDER by VIAJEROS_BAJADOS DESC

/*8.Mostrar cuál fue la estación que más pasajeros bajaron en el dia*/
select NOMBRE_ESTACION, sum(VIAJEROS_BAJADOS)as pasajerosBajados from barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION
ORDER by pasajerosBajados DESC
LIMIT 1

/*9.Mostrar cuál fue la estación que  tuvo la mayor diferencia
entre pasajeros que subieron y bajaron por tramo horario en el dia*/
select TRAMO_HORARIO,NOMBRE_ESTACION, (VIAJEROS_BAJADOS - VIAJEROS_SUBIDOS) as diferencia   from barcelona_viajeros_por_franja_xlsx
GROUP by TRAMO_HORARIO
ORDER by diferencia DESC


/*10.Mostrar cuál fue la estación que tuvo la mayor diferencia entre pasajeros 
que subieron y bajaron.*/
SELECT NOMBRE_ESTACION,max(diferencia)FROM (select NOMBRE_ESTACION, 
(VIAJEROS_SUBIDOS - VIAJEROS_BAJADOS) as diferencia  from barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION)

/*11.Cuál fue el promedio de pasajeros que viajaron por tramo?*/
SELECT avg(VIAJEROS_SUBIDOS) as promedio ,TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
GROUP by TRAMO_HORARIO
ORDER by promedio DESC

/*12.Qué estaciones estuvieron sobre ese promedio.*/
SELECT avg(VIAJEROS_SUBIDOS) as promedio ,TRAMO_HORARIO,NOMBRE_ESTACION FROM barcelona_viajeros_por_franja_xlsx
GROUP by TRAMO_HORARIO
HAVING VIAJEROS_SUBIDOS > promedio
ORDER by promedio DESC