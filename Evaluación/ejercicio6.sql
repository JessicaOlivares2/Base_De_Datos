-- 6) Contar la cantidad de miembros del 
-- gimnasio de cada categoría (gold, silver, 
-- etc), ordenadas desde la que tiene más 
-- miembros a la que tiene menos
select membership_status, count(*) as miembros  from get_fit_now_member
GROUP by membership_status
ORDER by miembros DESC