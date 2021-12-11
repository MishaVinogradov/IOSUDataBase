--6.	Показать список покупателей (CustomerID), которые имеют несколько стоимостей заказа
--(SubTotal) больше 10000, из таблицы Sales.SalesOrderHeader, используя SELF JOIN.
SELECT DISTINCT a.CustomerID, b.SubTotal FROM Sales.SalesOrderHeader as a
JOIN Sales.SalesOrderHeader as b ON a.CustomerID = b.CustomerID
WHERE a.SubTotal <> b.SubTotal AND a.SubTotal > 10000 AND b.SubTotal > 10000