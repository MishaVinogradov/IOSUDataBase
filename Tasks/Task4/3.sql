--3.	Показать товар, для которого существует менее 3 размеров в той же подкатегории товаров
--(Таблица Production.Product). 
SELECT p1.[Name], p1.Size, p1.ProductSubcategoryID
FROM Production.Product as p1
WHERE p1.Size IS NOT NULL
AND p1.ProductSubcategoryID IS NOT NULL
AND (
SELECT COUNT(DISTINCT p2.Size) as SizeCount
FROM Production.Product as p2
WHERE p2.Size IS NOT NULL
AND p1.ProductSubcategoryID = p2.ProductSubcategoryID) < 3
ORDER BY p1.Name, p1.ProductSubcategoryID