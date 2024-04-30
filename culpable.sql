 ​Jan.15, 2018​:muerte  and that it took place in ​SQL City​:lugar
primer codigo.
SELECT * FROM crime_scene_report
where date = '20180115' and city ='SQL City' and type = 'murder'
/*buscamos la descripccion teniendo de informacion la fecha y la ciudad*/
segundo codigo:
SELECT address_street_name as direccion,address_number,name as nombrePersonas FROM person
where  address_street_name ='Northwestern Dr' 
order by address_number desc
(morty schapiro vive en el ultima casa)
/*buscamos la ultima casa de nortwestern para encontrar los nombres de los testigos */            
3codigo(noseqhacer)
SELECT address_street_name,address_number,name FROM person
where  address_street_name = 'Franklin Ave' and name LIKE 'annabel%'
/*ya encontramos un testigo asi que buscamos el apellido del ultimo testigo que es Annabel Miller*/
4codigo()
SELECT name,i.transcript FROM person p
join interview i on p.id = i.person_id
where name like 'morty%'
/*morty:I heard a gunshot and then saw a man run out.
 He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". Only gold members have those bags.
 The man got into a car with a plate that included "H42W".
 annabel:I saw the murder happen, and I recognized the killer from my gym when 
 I was working out last week on January the 9th.*/
 (ni idea )

SELECT name,i.transcript FROM person p
join interview i on p.id = i.person_id
where name like 'Morty Schapiro' and name like 'Annabel Miller'
5to codigo:
SELECT * FROM get_fit_now_check_in
where membership_id like '48Z%'
/*busque entre 48Z*/
6to codigo:
SELECT * FROM get_fit_now_check_in g
join get_fit_now_member m on g.membership_id = m.id
where membership_id like '48Z%' and membership_status = 'gold'
/* busque ademas de la id el status de la membership*/
7to codigo:
SELECT p.name, d.plate_number FROM person p
join drivers_license d on p.license_id = d.id 
where plate_number like '%H42W%'
/*busque el nombre de la persona que lleva la placa y compare con los miembros 
de la membership*/
8to(buscamos la fecha):
SELECT * FROM get_fit_now_check_in
where check_in_date = '20180109'

9no codigo:
SELECT p.name, d.plate_number, g.membership_status FROM person p
JOIN drivers_license d ON p.license_id = d.id
JOIN  get_fit_now_member g ON p.id = g.person_id
where plate_number like '%H42W%'
/*busque la placa que tenga %H42W% ademas de que la membresia sea
de oro y me salio el asesino*/



