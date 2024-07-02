/*1*/
/*Nos informa que la empresa dejará de prestar operaciones 
en Canadá, por lo que nos solicitan que eliminemos todos
los empleados, departamentos y locaciones pertenecientes a
Canadá junto con el país.*/
country id:CA
location id:1800
department_id:2
employee id : 201 y 202
/*eliminar los empleados*/
DELETE from employees
where employee_id = 201 or employee_id = 202
/*eliminar los departamentos*/
DELETE from departments
where department_id = 2
/*eliminar locaciones*/
DELETE from locations
where location_id = 1800
/*eliminar pais*/
DELETE from countries
where country_id = 'CA'

/*2*/
/*Nos solicitan un listado que contenga nombre, apellido,
 departamento y país de todos los elementos que trabajan
en United Kingdom.*/
SELECT first_name,last_name,d.department_name,c.country_name from employees e
join departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id
join countries c on l.country_id = c.country_id
where c.country_id = 'UK'

/*3*/
/*Eliminar todos los trabajos que no posean empleados 
asociados, la query tiene que tener la capacidad de 
eliminar los jobs que no posean empleados de una sola 
ejecución sin indicar de manera manual el número de
jobs_id a eliminar.*/
DELETE FROM jobs
WHERE job_id NOT IN (SELECT DISTINCT job_id FROM employees);

/*en el select distinct toma todos los jobs id y luego hacemos
una consulta que se borra todos los que no tengan job id*/

/*4*/
/*Calcular la cantidad de personas, el sueldo promedio,
 mínimo y máximo de todos los puestos laborales
 (job_title), descartando aquellos que tengan un sólo 
 empleado.*/
SELECT j.job_title,count(employee_id) as personas,avg(salary) as promedio,
 min(salary) as minimo,max(salary) as maximo
 FROM employees e
 join jobs j on e.job_id = j.job_id
 GROUP by j.job_title
 HAVING personas > 1