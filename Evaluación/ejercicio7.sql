-- 7) Mostrar los nombres, numeros de seguridad social
-- (ssn), id de membresía y tipo de membresía de
-- las personas que fueron al gimnasio aunque sea una
-- vez durante el 2018. Los resultados deben estar
-- ordenados de manera que los de un mismo tipo de
-- membresía (gold, silver, etc) aparezcan todos 
-- seguidos y dentro de cada una ordenados por ssn.   
select membership_id,membership_start_date,membership_status, count(*) as miembros, p.ssn,p.name from get_fit_now_check_in f
JOIN get_fit_now_member g on f.membership_id = g.id 
JOIN person p on  p.id = g.person_id
WHERE membership_start_date  like '2018%'
GROUP by membership_status
HAVING membership_start_date > 1
ORDER by ssn DESC