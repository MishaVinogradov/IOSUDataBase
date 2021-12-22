--6.	Показывать количество проданных фильмов за отчетный период (сумму продаж).
SELECT SUM(c.Price) as Profit FROM Purchase as a
JOIN ShoppingCart as b ON a.PurchaseID = b.PurchaseID
JOIN Catalogue as c ON b.CatalogueID = c.CatalogueID
WHERE YEAR(a.PurchaseDate) = 1999