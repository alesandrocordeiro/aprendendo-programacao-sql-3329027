SELECT 
tra.TrackId AS id,
tra.Name AS musica, 
alb.Title AS album, 
art.Name AS artista
FROM
tracks AS tra
INNER JOIN albums AS alb ON tra.AlbumId = alb.AlbumId
INNER JOIN artists AS art ON art.ArtistId = alb.ArtistId

-------
WITH musica AS (
SELECT 
tra.TrackId AS id,
tra.Name AS musica, 
alb.Title AS album, 
art.Name AS artista
FROM
tracks AS tra
INNER JOIN albums AS alb ON tra.AlbumId = alb.AlbumId
INNER JOIN artists AS art ON art.ArtistId = alb.ArtistId
)
SELECT 
artista,
COUNT (musica) as qnt_total_musicas
FROM
musica
WHERE
artista LIKE 'Caetano%';