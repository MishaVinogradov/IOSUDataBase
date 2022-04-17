USE FilmShop;

CREATE TABLE ShoppingCart (
	ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_ShoppingCart PRIMARY KEY,

	ID_Catalogue UNIQUEIDENTIFIER NOT NULL
	CONSTRAINT FK_ShoppingCartCatalogue FOREIGN KEY 
	REFERENCES Catalogue(ID)
	ON DELETE CASCADE 
	ON UPDATE CASCADE,

	ID_Purchase UNIQUEIDENTIFIER NOT NULL
	CONSTRAINT FK_ShoppingCartPurchase FOREIGN KEY 
	REFERENCES Purchase(ID)
	ON DELETE CASCADE 
	ON UPDATE CASCADE,
);