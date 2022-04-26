USE FilmShop;

CREATE TABLE Customer (
    ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Customer PRIMARY KEY,
    CreditCard VARCHAR(255) NOT NULL,
	Purchases INT NOT NULL,
);