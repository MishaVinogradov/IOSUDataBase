--4.	Показать товары, цена которых равна минимальной (больше нуля) цене товара из той же
--подкатегории (Таблица Production.Product). Показать поля [Name], ListPrice и
--ProductSubcategoryID.
SELECT a.[Name], a.ListPrice, a.ProductSubcategoryID FROM Production.Product as a
JOIN (SELECT ProductSubcategoryID, MIN(ListPrice) as MinListPrice FROM Production.Product
WHERE ProductSubcategoryID IS NOT NULL AND ListPrice > 0
GROUP BY ProductSubcategoryID) as b ON a.ProductSubcategoryID = b.ProductSubcategoryID
AND a.ListPrice = b.MinListPrice