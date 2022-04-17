USE FilmShop;

CREATE TABLE Purchase (
	ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Purchase PRIMARY KEY,
	PurchaseDate DATE NOT NULL,
	CreditCard VARCHAR(255) NOT NULL,
	TelephoneNumber VARCHAR(255) NOT NULL,
);