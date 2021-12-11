--3.	Показать список товаров (поле Name), в котором указан, есть ли у товара количество в 
--запасе (поле Quantity) или нет, из таблицы Production.ProductInventory, 
--Production.Product, используя RIGHT OUTER JOIN.
SELECT a.Quantity, b.[Name] FROM Sales.ShoppingCartItem as a
RIGHT OUTER JOIN Production.Product as b ON a.ProductID = b.ProductID