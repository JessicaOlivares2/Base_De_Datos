-- 1) Mostrar todos los tipos de crimenes
-- reportados en la ciudad 'SQL City'.
-- Los tipos de crimen deben estar en orden 
-- alfabético y no debe haber repetidos
SELECT DISTINCT city,type from crime_scene_report
where city = 'SQL City'
ORDER by type ASC