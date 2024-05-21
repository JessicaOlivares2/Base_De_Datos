-- 8) Hacer un ranking de los 5 eventos más populares
-- a los que asistieron las personas que ganan 
-- más de 35000 dolares al año.  
select event_name,count(*) as eventos,p.name,i.annual_income from facebook_event_checkin f
join person p on f.person_id = p.id
join income i on p.ssn = i.ssn
WHERE annual_income > 35000
GROUP by event_name
ORDER by eventos DESC
LIMIT 5