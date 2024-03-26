ejercicio 1:

SELECT name, Milliseconds, Title FROM tracks t
JOIN albums a ON t.AlbumId = a.AlbumId

ejercicio 2:

SELECT FirstName, LastName,  Address, City FROM customers

ejercicio 3:

SELECT name, Milliseconds  FROM tracks t
WHERE Composer ISNULL AND Milliseconds > 2900000

ejercicio 4:

SELECT FirstName, LastName, Company FROM customers
WHERE Company IS NOT NULL

ejercicio 5: 

SELECT DISTINCT BillingCity FROM invoices
WHERE BillingState IS NOT NULL
ORDER by BillingCity DESC

ejercicio 6:

SELECT Title FROM albums a
WHERE Title like '%of%' 
ORDER by Title ASC

ejercicio 7:

SELECT t.name, g.name FROM tracks t
JOIN genres g ON t.GenreId = g.GenreId

ejercicio 8:

SELECT DISTINCT name, Title FROM tracks t
JOIN albums a ON t.AlbumId = a.AlbumId
ORDER by Title DESC







