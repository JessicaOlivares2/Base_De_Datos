-- 1) Mostrar todas las ciudades donde se 
-- reportaron asesinatos. 
-- Las ciudades deben estar en orden alfabético
-- y no debe haber repetidos
SELECT DISTINCT city,type from crime_scene_report
where type = 'murder'
ORDER by city ASC