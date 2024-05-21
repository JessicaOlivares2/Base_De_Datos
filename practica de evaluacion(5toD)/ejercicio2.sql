-- 2) Listar el nombre de la persona y los 
-- datos del auto (marca, modelo y patente) de 
-- todos las mujeres de menos de 40 años, 
-- elegir el orden en que se muestran 
SELECT name, d.car_make,d.car_model,d.plate_number from person p
join drivers_license d on p.license_id = d.id	
WHERE gender = 'female' and age < 40