-- DQL: Consultas analíticas para playlist musical
USE db_playlist_musical;

SELECT * FROM canciones_playlist ORDER BY reproducciones DESC;
SELECT * FROM canciones_playlist WHERE estado_cancion = 'activa' ORDER BY artista ASC;
SELECT genero_musical, COUNT(*) AS total, SUM(reproducciones) AS total_rep FROM canciones_playlist GROUP BY genero_musical ORDER BY total_rep DESC;
SELECT * FROM canciones_playlist ORDER BY reproducciones DESC LIMIT 3;
SELECT estado_cancion, COUNT(*) AS cantidad, AVG(duracion_minutos) AS promedio_duracion FROM canciones_playlist GROUP BY estado_cancion;
