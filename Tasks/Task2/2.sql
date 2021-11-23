--2)	Найти максимальный вес (Weight) товара черного цвета из таблицы Production.Product, не учитывать
--пустые и нулевые значения.
SELECT MAX(Weight) AS MaxWeight
FROM Production.Product
WHERE Weight IS NOT NULL AND Weight != 0