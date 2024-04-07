SELECT
tra.TrackId AS id,
tra.Name AS musica,
alb.Title AS titulo_album,
art.Name AS artista
FROM
tracks AS tra
INNER JOIN albums AS alb on tra.AlbumId = alb.AlbumId
INNER JOIN artists AS art ON art.ArtistId = alb.ArtistId
WHERE
artista LIKE '%Nação%'
AND titulo_album NOT LIKE 'Da Lama ao Caos';