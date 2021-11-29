--5)	Вывести BusinessEntityID, LastReceiptDate и максимальное по StandardPrice для BusinessEntityID
--с разными LastReceiptDate, предусмотреть вывод максимального StandardPrice у различных 
--BusinessEntityID из таблицы Purchasing.ProductVendor. (Использовать ROOLUP)
SELECT BusinessEntityID, LastReceiptDate, MAX(StandardPrice) as MaxStandardPrice
FROM Purchasing.ProductVendor
GROUP BY
ROLLUP(BusinessEntityID, LastReceiptDate)