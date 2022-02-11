SELECT
  user.user_name AS 'usuario',
  IF (YEAR(MAX(history.played_on)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM SpotifyClone.user_history AS history

INNER JOIN SpotifyClone.users AS user
ON history.user_id = user.user_id

GROUP BY history.user_id
ORDER BY user.user_name ASC;