/*Imagine que en la tabla de empleados por error se cargaron los números
 de teléfono en la columna de número de fax y a la inversa.
 Escriba una consulta de modificación que corrija este error.*/
UPDATE employees set Fax = Phone, Phone = Fax
