-- 5) Encontrar la edad mínima, máxima y promedio
-- de las mujeres que tienen licencia de conducir
SELECT p.name, d.plate_number,d.car_make,d.car_model,min(d.age) as minima_edad,
max(d.age)  as edad_maxima , avg(d.age) as edad_promedio ,d.gender FROM person p
JOIN drivers_license d ON p.license_id = d.id
where gender = 'female'
