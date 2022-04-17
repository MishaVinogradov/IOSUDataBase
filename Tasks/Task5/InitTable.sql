USE FilmShop;

CREATE TABLE Director (
    DirectorID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(255) NOT NULL,
	LastName VARCHAR(255) NOT NULL,
    Birthdate DATE NOT NULL,
	Deathdate DATE DEFAULT NULL,
);

CREATE TABLE StorageMedium (
    StorageMediumID INT PRIMARY KEY IDENTITY(1,1),
    StorageMediumType VARCHAR(255) NOT NULL,
);

CREATE TABLE Country (
    CountryID INT PRIMARY KEY IDENTITY(1,1),
    [Name] VARCHAR(255) NOT NULL,
);

CREATE TABLE Genre (
    GenreID INT PRIMARY KEY IDENTITY(1,1),
    [Name] VARCHAR(255) NOT NULL,
);

CREATE TABLE Film (
    FilmID INT PRIMARY KEY IDENTITY(1,1),
    [Name] VARCHAR(255) NOT NULL,
	[Description] VARCHAR(255) NOT NULL,
	Duration INT NOT NULL,
	CountryID INT NOT NULL,
	FOREIGN KEY (CountryID) REFERENCES Country (CountryID),
	GenreID INT NOT NULL,
	FOREIGN KEY (GenreID) REFERENCES Genre (GenreID),
	DirectorID INT NOT NULL,
	FOREIGN KEY (DirectorID) REFERENCES Director (DirectorID),
);

CREATE TABLE Actor (
	ActorID INT PRIMARY KEY IDENTITY(1,1),
	FirstName VARCHAR(255) NOT NULL,
	LastName VARCHAR(255) NOT NULL,
	Birthdate DATE NOT NULL,
	Deatdate DATE DEFAULT NULL,
);

CREATE TABLE [Cast] (
	CastID INT PRIMARY KEY IDENTITY(1,1),
	FilmID INT,
	FOREIGN KEY (FilmID) REFERENCES Film (FilmID),
	ActorID INT,
	FOREIGN KEY (ActorID) REFERENCES Actor (ActorID),
);

CREATE TABLE Catalogue (
	CatalogueID INT PRIMARY KEY IDENTITY(1,1),
	FilmID INT,
	FOREIGN KEY (FilmID) REFERENCES Film (FilmID),
	Price INT NOT NULL,
	[Status] BIT NOT NULL,
	StorageMediumID INT,
	FOREIGN KEY (StorageMediumID) REFERENCES StorageMedium (StorageMediumID),
);

CREATE TABLE Purchase (
	PurchaseID INT PRIMARY KEY IDENTITY(1,1),
	PurchaseDate DATE NOT NULL,
	CreditCard VARCHAR(255) NOT NULL,
	TelephoneNumber VARCHAR(255) NOT NULL,
);

CREATE TABLE ShoppingCart (
	ShoppingCartID INT PRIMARY KEY IDENTITY(1,1),
	CatalogueID INT NOT NULL,
	FOREIGN KEY (CatalogueID) REFERENCES Catalogue (CatalogueID),
	PurchaseID INT NOT NULL,
	FOREIGN KEY (PurchaseID) REFERENCES Purchase (PurchaseID),
);