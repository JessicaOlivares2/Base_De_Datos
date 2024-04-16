ejercicio 1:

SELECT first_name, last_name, salary  FROM employees
WHERE salary < 6000

ejercicio 2:
SELECT first_name, last_name, l.state_province,l.city  FROM employees e
JOIN departments d ON e.department_id = d.department_id 
JOIN locations l ON d.location_id = l.location_id

ejercicio 3:
SELECT e.first_name, p.first_name  FROM employees e 
JOIN employees p ON e.employee_id = p.manager_id
ORDER BY e.first_name, p.first_name ASC;

ejercicio 4:

SELECT e.first_name,e.last_name, d.first_name  FROM employees e 
JOIN dependents d on e.employee_id = d.employee_id
ORDER BY e.first_name,e.last_name,d.first_name ASC;

ejercicio 5:

SELECT first_name, last_name,j.job_title,j.max_salary FROM employees e 
JOIN jobs j on e.job_id = j.job_id
ORDER BY j.max_salary DESC;

ejercicio 6:

SELECT first_name, last_name,salary,d.department_name FROM employees e 
JOIN departments d on d.department_id = e.department_id
ORDER BY first_name,d.department_name DESC;

ejercicio 7:(me falta arreglarlo, tiene errores)
SELECT first_name, last_name,l.state_province FROM employees e 
JOIN locations l on l.location_id = e.location_id

