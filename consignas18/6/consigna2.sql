/*modificar / pasar los paises a las nuevas regiones*/
egipto:Africa
israe:Middle east
kuwai:Middle east
nigeria:Africa
zambia:Africa
zimbabwe:Africa

UPDATE countries
set region_id = 6
where country_name = 'Israel' or country_name = 'Kuwait'

UPDATE countries
set region_id = 5
where region_id = 4