---1---
--Listar el nombre de todos los empleados junto al nombre de departamento que pertenece, 
--el estado o provincia, su sueldo y el nombre de su manager, ordenarlo por sueldo--
SELECT e.first_name,d.department_name,l.state_province,e.salary,em.first_name from employees e
join departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id
join employees em on e.employee_id = em.employee_id

--2--
--reducir el salario mínimo y máximo de cada trabajo un 25%.--
UPDATE jobs
set min_salary = min_salary - (min_salary * 0.25)

UPDATE jobs
set max_salary = max_salary - (max_salary * 0.25)

--3--
--Eliminar aquellos trabajadores que cobren sobre el salario máximo de su tipo de trabajo.--
DELETE FROM employees
WHERE employee_id in (
SELECT e.employee_id FROM jobs j
JOIN employees e ON j.job_id = e.job_id
WHERE salary > max_salary)
