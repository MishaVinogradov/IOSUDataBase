--1.	Найти фильм по исполнителям.
SELECT a.* FROM Film as a
JOIN [Cast] as b ON a.FilmID = b.FilmID
JOIN Actor as c ON b.ActorID = c.ActorID
WHERE c.FirstName = 'John'