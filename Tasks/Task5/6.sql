--3.	Показывать список фильмов по жанрам.
SELECT a.*, b.Name as Genre FROM Film as a
JOIN Genre as b ON a.GenreID = b.GenreID