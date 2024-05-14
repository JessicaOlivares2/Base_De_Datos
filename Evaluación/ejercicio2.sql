-- 2) Listar el nombre y los datos del auto
-- (marca, modelo y patente) de todos los
-- varones más de 70 años, elegir el orden
-- en que se muestran 
SELECT plate_number,car_model,car_make,age,gender from drivers_license
where age > 70 and gender = 'male'
ORDER by age ASC