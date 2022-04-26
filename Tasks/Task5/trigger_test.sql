--Insert Catologue
EXEC dbo.pCatalogueInsert '54T5GG123', 'Pulp Fiction',1,1, 'CD'
EXEC dbo.pCatalogueInsert '54T5GG546', 'Pulp Fiction',1,1, 'CD'

--Insert Purchase
EXEC dbo.pPurchaseInsert 'FWEFKFE', '1999-04-12','1234 3242 4234 3243', '5435323443'
EXEC dbo.pPurchaseInsert 'FWEFJEJ', '1999-04-12','1234 3242 4234 3243', '5435323443'

--Insert ShoppingCart
EXEC dbo.pShoppingCartInsert '54T5GGREG', 'FWEFKFE'
EXEC dbo.pShoppingCartInsert '54TFJISDF', 'FWEFJEJ'