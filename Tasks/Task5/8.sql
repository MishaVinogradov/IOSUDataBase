--5.	Показывать список наиболее продаваемых фильмов.
SELECT c.[Name], COUNT(*) as TopSells FROM ShoppingCart as a
JOIN Catalogue as b ON a.CatalogueID = b.CatalogueID
JOIN Film as c ON b.FilmID = c.FilmID
GROUP BY c.Name
ORDER BY TopSells DESC