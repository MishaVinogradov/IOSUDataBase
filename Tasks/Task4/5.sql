--5.	Показать товары, цена которых меньше средней цены в любом стиле (Таблица
--Production.Product). Показать поля [Name], ListPrice и Style.
SELECT [Name], ListPrice, Style FROM Production.Product
WHERE ListPrice < ALL(SELECT AVG(ListPrice) as AvgListPrice FROM Production.Product
WHERE Style IS NOT NULL
GROUP BY Style)