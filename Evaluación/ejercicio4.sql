-- 4) Encontrar el nombre y la dirección completa
-- de la persona que vive en la anteúltima casa
-- de la calle 'Franklin Ave'
SELECT address_street_name as direccion,address_number,name as nombre FROM person
where  address_street_name ='Franklin Ave' 
order by address_number desc
LIMIT 1 OFFSET 1