--1.	Найти фильм по жанру.
SELECT a.* FROM Film as a 
JOIN Genre as b ON a.GenreID = b.GenreID
WHERE b.Name = 'Action'