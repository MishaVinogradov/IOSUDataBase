--4.	Показать список продуктов (ProductID), которые имеют несколько цен за штуку (UnitPrice),
--из таблицы Purchasing.PurchaseOrderDetail, используя SELF JOIN.
SELECT DISTINCT a.ProductID, a.UnitPrice FROM Purchasing.PurchaseOrderDetail as a
JOIN Purchasing.PurchaseOrderDetail AS b ON a.ProductID = b.ProductID
AND a.UnitPrice <> b.UnitPrice