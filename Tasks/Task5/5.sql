--2.	Показывать список возможных носителей для выбранного фильма.
SELECT DISTINCT c.Name, b.StorageMediumType FROM Catalogue as a
JOIN StorageMedium as b ON a.StorageMediumID = b.StorageMediumID
JOIN Film as c ON a.FilmID = c.FilmID
WHERE c.[Name] = 'Pulp Fiction'