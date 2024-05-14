-- 3) Buscar la lista de todas las personas
-- que no tienen licencia de conducir
SELECT p.name, d.plate_number,d.car_make,d.car_model,d.gender,d.age FROM person p
LEFT JOIN drivers_license d ON p.license_id = d.id
where car_model is null