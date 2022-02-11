SELECT
  songs.song_name AS 'cancao',
  COUNT(history.song_id) AS 'reproducoes'
FROM SpotifyClone.songs AS songs

INNER JOIN SpotifyClone.user_history AS history
ON songs.song_id = history.song_id

GROUP BY song_name
ORDER BY reproducoes DESC,
song_name LIMIT 2