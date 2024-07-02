/*1*/
/*Se necesita saber cuántos empleados
hay en cada tipo de trabajo 
y cuanto se gasta en salarios,
para esto nos solicita que creemos un
listado de tres columnas donde 
indiquemos el nombre del tipo de
trabajador, la cantidad de empleados
y el gasto total en sueldos de
empleados por tipo de trabajo y necesita
tenerla ordenada por cantidad de empleados.
*/
SELECT count(employee_id) as empleados,job_title,sum(salary) as suma from employees e
join jobs j on e.job_id = j.job_id
group by j.job_title
ORDER by empleados ASC

/*2*/
/*Nos solicita un listado que contenga nombre,
 apellido, tipo de trabajo y departamento de todos 
 los empleados y la ciudad.*/
SELECT first_name,last_name,j.job_title,d.department_name,l.city from employees e
join jobs j on e.job_id = j.job_id
JOIN departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id
/*3*/
/*Debido a una política de mejora de sueldos nos 
solicitan que incrementemos un 55% el salario de 
todos los empleados que cobren menos de 7500 y
pertenezcan al departamento de IT o Financiero 
(finance)*/
UPDATE employees
SET salary = salary + (salary * 0.55)
WHERE job_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name = 'IT' OR department_name = 'Finance'
)
AND salary <= 7500;

/*4*/
/*Nos informa que la empresa dejará de prestar 
operaciones en Canada, por lo que nos solicitan que 
eliminemos todos los empleados, departamentos y 
locaciones pertenecientes a Canada junto con el país.
*/
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

/*5*/
/*Nos solicitan actualizar el número de teléfono de
los gerentes de ventas que no tengan un numero de 
telefono asociado, se debe registrar el numero 
‘333.444.555’
*/
UPDATE employees
set phone_number = '333.444.555'
where job_id =(
SELECT job_id from jobs
WHERE phone_number is null and job_title = 'Sales Manager')

/*6*/
/*Nos informan de la creación de un nuevo departamento 
dentro de la empresa que tendrá el nombre consultants,
este está en la locación ubicada en ‘2004 Charade Rd’ 
de Seattle y un nuevo tipo de trabajo de nombre 
‘consultant’. adicionalmente nos envió la información
de estos 3 consultores que deben cargarse perteneciendo
a este nuevo departamento y tipo de trabajo:*/
INSERT INTO departments(department_id,department_name,location_id)
VALUES (12,"consultants",1700);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
VALUES (20, 'Consultant', '7500.0', '16000.0');

INSERT INTO employees(first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
VALUES('Raul', 'Lopez', 'rlopez@gmail.com', '333.445.556', '2024-07-1', 20, 5000, 105, 12),
    ('Andres', 'Gonzales', 'agonzales@gmail.com', '333.445.556', '2024-07-1', 20, 6000, 106, 12),
    ('Laura', 'Fernandez', 'lfernandez@gmail.com', '333.445.556', '2024-07-1', 20, 7500, 107, 12)