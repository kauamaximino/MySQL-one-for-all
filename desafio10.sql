SELECT
    song.name_song AS nome,
    COUNT(user_history.user_id) AS reproducoes
FROM
    song
    JOIN user_history ON user_history.song_id = song.id
    JOIN user ON user.id = user_history.user_id
WHERE
    user.plan_id IN(1, 2)
GROUP BY
    song.name_song
ORDER BY
    reproducoes DESC,
    nome;