codigo 1:
SELECT department_name FROM departments
ORDER by department_name ASC

codigo 2:
SELECT DISTINCT salary FROM employees
ORDER by salary DESC
 
codigo 3:
SELECT min_salary,max_salary, job_title FROM jobs
WHERE job_title like '%manager'
ORDER by min_salary DESC ,max_salary DESC

codigo 4:
SELECT region_name,c.country_name FROM regions r
JOIN countries c ON r.region_id = c.region_id
GROUP by region_name

codigo 5:
SELECT e.first_name,e.last_name,e.salary,department_name FROM departments d
JOIN employees e on d.department_id = e.department_id
WHERE salary BETWEEN 9000 AND 17000
ORDER by salary DESC

codigo 6:
SELECT region_name,c.country_name,count(*) as paises from regions r
JOIN countries c ON r.region_id = c.region_id
GROUP by region_name
HAVING paises > 5

codigo 7:
SELECT
min(hire_date) as vieja,
max(hire_date) as actual
FROM employees

codigo 8:
SELECT e.first_name, e.last_name,count(*) as hijos FROM employees e
JOIN dependents d on e.employee_id = d.employee_id
GROUP by e.last_name
ORDER by hijos DESC
LIMIT 5;

codigo 9:
SELECT e.first_name,e.last_name,max_salary from jobs j
join employees e on j.job_id = e.job_id
ORDER by max_salary DESC
LIMIT 1 OFFSET 2

codigo 10:
SELECT e.first_name, e.last_name,count(*) as hijos,
avg(d.relationship)as promedio FROM employees e
JOIN dependents d on e.employee_id = d.employee_id
GROUP by e.last_name
ORDER by hijos DESC
(me falta lo maximo y ya esta)