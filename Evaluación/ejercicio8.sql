-- 8) Hacer un ranking de los autos 
-- (marca y modelo) que manejan las
-- personas que ganan menos de 35000 dolares
-- al año.  Este ranking debe estar ordenado
-- desde los más populares a los menos populares
-- y no debe incluir los modelos que tengan 
-- menos de 4 autos
SELECT name, d.car_make,count(*) as autos ,d.car_model,i.annual_income FROM person p
JOIN drivers_license d ON p.license_id = d.id
JOIN income i on p.ssn = i.ssn
WHERE annual_income < 35000
group by car_make
HAVING autos > 4
ORDER by autos DESC

