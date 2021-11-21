--5.	Показать поля Name, ShipBase, ShipRate из таблицы Purchasing.ShipMethod. Из поля Name показать
--только те значения. которые содержат слово 'Fast' (Быстрый).
SELECT Name, ShipBase, ShipRate
FROM Purchasing.ShipMethod
WHERE Name LIKE '%Fast%'