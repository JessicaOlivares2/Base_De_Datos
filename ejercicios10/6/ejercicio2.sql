/*Borrar todos los géneros que tengan menos de 50 canciones 
(borrar todo lo necesario para poder borrar estos géneros)*/

DELETE from genres
where GenreId in (SELECT count(t.TrackId) as canciones from tracks t
group by t.GenreId
HAVING canciones < 50);

DELETE from tracks
where TrackId in (SELECT count(t.TrackId) as canciones from tracks t
group by t.GenreId
HAVING canciones < 50);
/*no lo termine*/
UPDATE tracks SET GenreId = NULL 
WHERE GenreId in (
SELECT GenreId FROM tracks 
GROUP by GenreId
HAVING count(TrackId) < 50);
/*tampoco*/
