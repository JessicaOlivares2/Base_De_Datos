--1--
--Se necesita saber cuántos empleados hay en cada departamento y 
--cuanto gasta en salarios cada uno, para esto nos solicita que creemos un
-- listado de tres columnas donde indiquemos el nombre del departamento, la cantidad de
-- empleados y el gasto total en sueldos de empleados por departamento.
SELECT d.department_name,count(first_name) as empleados, salary from employees e
join departments d on e.department_id = d.department_id
GROUP by d.department_name

--2--
--Nos solicita un listado que contenga nombre, apellido, departamento y pais
--de todos los empleados que trabajan en Estados Unidos.
SELECT d.department_name,first_name,last_name,c.country_name from employees e
join departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
where c.country_name  like "%America%"

--3--
--El encargado del departamento de ventas nos informó que detecto que hay algunos empleados 
--que no poseen un número de teléfono cargado, nos solicitó que le pasemos la lista de aquellos
-- empleados que no tienen cargado un número de teléfono, esta lista debe estar confeccionada por 
--id de empleado, nombre, apellido, correo electrónico, número de teléfono y id de departamento. 
--Y que por favor le carguemos momentáneamente el numero de la empresa (111.222.3344) para evitar 
--tener valores null en esos campos.

--la lista que pide--
SELECT employee_id,first_name,last_name,email,phone_number,d.department_id from employees e
join departments d on e.department_id = d.department_id
where phone_number is null

--lo que cambie
UPDATE employees
set phone_number = 111.222.3344
where phone_number is null
--aunq no me dejo poner .3344 asiq lo puse sin punto-

--4--
--Debido a una politica de mejora de sueldos nos solicitan que incrementemos un 20% 
--el salario de todos los empleados que cobren 8000 o menos que trabajen de programadores 
--o empleados de compra (Purchasing Clerk).

UPDATE employees 
SET salary = salary + (salary * 0.20)
WHERE job_id IN (
    SELECT e.job_id FROM jobs j
    JOIN employees e ON j.job_id = e.job_id
    WHERE j.job_title LIKE 'Pro%' 
      AND e.salary <= 8000 )

--5--
--Nos informan de la creación de un nuevo departamento dentro de la empresa que tendrá el nombre 
--development y se encargara de hacer desarrollos de la empresa, este está en la locación ubicada
--en ‘147 Spadina Ave’ de Toronto y adicionalmente nos envió la información de estos 3 empleados 
--que deben cargarse perteneciendo a este nuevo departamento: 
--El ID de la locación para la primer parte del ejercicio debe obtenerse
--utilizando sub consultas.
INSERT INTO departments(department_id,department_name,location_id)
VALUES (12,"development",1800);

INSERT INTO employees(first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
VALUES('Matias', 'Gonzales', 'mgonzales@gmail.com', '1.231.231.122', '2024-06-25', 9, 5000, 100, 12),
    ('Laura', 'Nievas', 'lnievas@gmail.com', '1.231.231.122', '2024-06-25', 9, 5000, 100, 12),
    ('Federico', 'Lopez', 'flopez@gmail.com', '1.231.231.122', '2024-06-25', 9, 5000, 100, 12);

--6--
--Nos informa que la empresa dejara de prestar operaciones en Alemania, por lo que nos solicitan 
--que eliminemos todos los empleados, departamentos y locaciones pertenecientes a Alemania 
--junto con el pais.
SELECT e.first_name,d.department_name,l.location_id,r.region_id from employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
join countries c on l.country_id = c.country_id
join regions r on c.region_id = r.region_id

DELETE FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE location_id IN (
        SELECT location_id
        FROM locations
        WHERE country_id = 'DE' 
    )
);

-- Eliminar departamentos en Alemania
DELETE FROM departments
WHERE location_id IN (
    SELECT location_id
    FROM locations
    WHERE country_id = 'DE'
);

-- Eliminar locaciones en Alemania
DELETE FROM locations
WHERE country_id = 'DE';

-- Eliminar el país Alemania de la tabla de países si es necesario
DELETE FROM countries
WHERE country_id = 'DE';