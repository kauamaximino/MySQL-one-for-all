SELECT
    artists.name_artist AS artista,
    album.name_album AS album
FROM
    artists
    JOIN album ON album.artist_id = artists.id
WHERE
    artists.name_artist = "Walter Phoenix" GROUP BY artista, album;