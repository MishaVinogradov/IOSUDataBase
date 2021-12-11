--2.	Показать список товаров (поле Name) в котором указано, есть ли у них количество в
--корзине покупателя или нет, из таблиц Production.Product, Sales.ShoppingCartItem, 
--используя LEFT OUTER JOIN.
SELECT a.[Name], b.Quantity FROM Production.Product as a
LEFT OUTER JOIN Sales.ShoppingCartItem as b ON a.ProductID = b.ProductID