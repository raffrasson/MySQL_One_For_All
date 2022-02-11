SELECT
	COUNT (song_id) AS 'cancoes',
    (SELECT COUNT (artist_id) FROM SpotifyClone.artists) AS 'artistas',
    (SELECT COUNT (album_id) FROM SpotifyClone.albums) AS 'albuns'
FROM SpotifyClone.songs;  