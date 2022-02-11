SELECT
  artists.artist_name AS 'artista',
  album.album_name AS 'album',
  COUNT(followers.user_id) AS 'seguidores'
FROM SpotifyClone.artists AS artists

INNER JOIN SpotifyClone.albums AS album
ON album.artist_id = artists.artist_id

INNER JOIN SpotifyClone.followed_artists AS followers
ON followers.artist_id = artists.artist_id

GROUP BY artists.artist_id, album.album_name
ORDER BY seguidores DESC, artists.artist_name, album.album_name;