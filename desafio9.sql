SELECT
    COUNT(*) AS quantidade_musicas_no_historico
FROM
    `user`
    JOIN user_history ON user_history.user_id = user.id
WHERE
    `user`.`name` = "Bill"
GROUP BY
    `user`.`name`;