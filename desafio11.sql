SELECT
    song.name_song AS nome_musica,
    CASE
        WHEN song.name_song LIKE "%Streets" THEN REPLACE(song.name_song, "Streets", "Code Review")
        WHEN song.name_song LIKE "%Her Own" THEN REPLACE(song.name_song, "Her Own", "Trybe")
        WHEN song.name_song LIKE "%Inner Fire" THEN REPLACE(song.name_song, "Inner Fire", "Project")
        WHEN song.name_song LIKE "%Silly" THEN REPLACE(song.name_song, "Silly", "Nice")
        WHEN song.name_song LIKE "%Circus" THEN REPLACE(song.name_song, "Circus", "Pull Request")
    END AS novo_nome
FROM
    song
WHERE
    song.id IN(3, 4, 6, 15, 18)
ORDER BY
    novo_nome;