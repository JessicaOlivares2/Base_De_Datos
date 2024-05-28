/*insertar un artista*/

INSERT INTO artists(name)
VALUES ("Jungkook");

/*insertar un disco del artista*/

INSERT INTO albums(Title,ArtistId)
VALUES ("GOLDEN",276);

/*insertar 3 canciones*/
INSERT INTO tracks(name,AlbumId,MediaTypeId,Milliseconds,UnitPrice)
VALUES ("3D",348,3,202000,0.99),
	   ("standing next to you",348,3,206000,0.99),
	   ("begin",348,3,237000,0.99);

/*modificar (update) los valores nulos de la canciones insertadas*/
/*cambie el genero*/
UPDATE tracks
set GenreId = 9
where AlbumId = 348 

/**/
UPDATE tracks
set Composer = "BloodPoop, David Stewart, Jack Harlow" 
where TrackId = 3504 
/**/
UPDATE tracks
set Composer = "Andrew Watt, Cirkut, Jon Bellion, Ali Tamposi" 
where TrackId = 3505 
/**/
UPDATE tracks
set Composer = "Rm, Tony Esterly,David Quiñones" 
where TrackId = 3506 

/**/
UPDATE tracks
set Bytes = 3456123  
where TrackId = 3504
/**/
UPDATE tracks
set Bytes = 3686123  
where TrackId = 3505 
/**/
UPDATE tracks
set Bytes = 3966153  
where TrackId = 3506 
/*borrar todo lo que hicimos con el delate*/
/*canciones*/
DELETE FROM tracks
where TrackId = 3504 or TrackId = 3505 or TrackId = 3506
/*album*/
DELETE FROM albums
where AlbumId = 348
/*artista*/
DELETE FROM artists
where ArtistId = 276 