--1.	Показать самый дорогой товар (Таблица Production.Product). Вывести наименование
--и цену товара.
SELECT [Name], ListPrice FROM Production.Product
WHERE ListPrice = (SELECT MAX(ListPrice) FROM Production.Product)