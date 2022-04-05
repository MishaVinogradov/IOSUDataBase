--1.	Найти фильм по режисёру.
SELECT a.* FROM Film as a
JOIN Director as b ON a.DirectorID = b.DirectorID
WHERE b.FirstName = 'Quentin'