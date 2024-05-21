-- 5) Encontrar la edad mínima, máxima y promedio
-- de los varones que tienen licencia de conducir
SELECT min(d.age) as minima_edad,
max(d.age)  as edad_maxima , avg(d.age) as edad_promedio ,d.gender FROM drivers_license d
where gender = 'male'