-- 2) Listar el nombre y los datos del auto
-- (marca, modelo y patente) de todos los
-- varones más de 70 años, elegir el orden
-- en que se muestran 
SELECT p.name, d.plate_number,d.car_make,d.car_model,d.gender,d.age FROM person p
JOIN drivers_license d ON p.license_id = d.id
where age > 70 and gender = 'male'
ORDER by age ASC