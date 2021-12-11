--5.	Показать список цен за штуку (UnitPrice), к которым относятся несколько продуктов
--(ProductID), из таблицы Purchasing.PurchaseOrderDetail, используя SELF JOIN.
SELECT DISTINCT a.UnitPrice, a.ProductID FROM Purchasing.PurchaseOrderDetail as a
JOIN Purchasing.PurchaseOrderDetail AS b ON a.UnitPrice = b.UnitPrice AND
a.ProductID <> b.ProductID