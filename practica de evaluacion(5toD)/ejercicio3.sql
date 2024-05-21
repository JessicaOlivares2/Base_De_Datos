-- 3) Buscar la lista de todas las personas
-- que NO están asociadas al gimnasio Get-Fit-Now
SELECT  p.name,m.membership_status FROM person p
Left JOIN get_fit_now_member m on p.id= m.person_id
WHERE person_id is null