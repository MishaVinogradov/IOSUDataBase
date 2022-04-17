USE FilmShop;

CREATE TABLE [Cast] (
	ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Cast PRIMARY KEY,

	ID_Film UNIQUEIDENTIFIER NOT NULL
	CONSTRAINT FK_CastFilm FOREIGN KEY 
	REFERENCES Film(ID)
	ON DELETE CASCADE 
	ON UPDATE CASCADE,

	ID_Actor UNIQUEIDENTIFIER NOT NULL
	CONSTRAINT FK_CastActor FOREIGN KEY 
	REFERENCES Actor(ID)
	ON DELETE CASCADE 
	ON UPDATE CASCADE,
);