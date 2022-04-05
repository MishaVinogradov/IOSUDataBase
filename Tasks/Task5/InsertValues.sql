-- Insert Directors
INSERT INTO Director VALUES ('Quentin', 'Tarantino', '1963-03-27', NULL);
INSERT INTO Director VALUES ('Stanley', 'Kubrick', '1928-07-26', '1999-03-07');

-- Insert Storage Medium
INSERT INTO StorageMedium VALUES ('CD');
INSERT INTO StorageMedium VALUES ('Tape');
INSERT INTO StorageMedium VALUES ('Online');

-- Insert Countries
INSERT INTO Country VALUES ('United States');
INSERT INTO Country VALUES ('United Kingdom');

-- Insert Genres
INSERT INTO Genre VALUES ('Action');
INSERT INTO Genre VALUES ('Adventure');
INSERT INTO Genre VALUES ('Drama');
INSERT INTO Genre VALUES ('Thriller');

--Insert Film
INSERT INTO Film VALUES ('Pulp Fiction', 'Cool','120',1,1,1);
INSERT INTO Film VALUES ('Django Unchained', 'Piw pow','150',1,1,1);
INSERT INTO Film VALUES ('A Clockwork Orange', 'Wow','152',2,2,2);

--Insert Actors
INSERT INTO Actor VALUES ('John', 'Travolta','1954-02-18', NULL);
INSERT INTO Actor VALUES ('Samuel', 'L.Jackson','1948-12-21', NULL);
INSERT INTO Actor VALUES ('Malcolm', 'McDowell','1943-06-13', NULL);

--Insert Cast
INSERT INTO [Cast] VALUES (1,1);
INSERT INTO [Cast] VALUES (1,2);
INSERT INTO [Cast] VALUES (2,2);
INSERT INTO [Cast] VALUES (3,3);

--Insert Catologue
INSERT INTO Catalogue VALUES (1,10,1,1);
INSERT INTO Catalogue VALUES (1,10,1,2);
INSERT INTO Catalogue VALUES (2,11,1,1);
INSERT INTO Catalogue VALUES (3,15,1,2);


INSERT INTO Catalogue VALUES (1,10,0,1);
INSERT INTO Catalogue VALUES (1,10,0,2);
INSERT INTO Catalogue VALUES (1,5,0,3);

--Insert Purchase
INSERT INTO Purchase VALUES ('1999-04-12','1234 3242 4234 3243', '5435323443');
INSERT INTO Purchase VALUES ('2000-04-12','1234 3242 4234 4234', '5435322342');

--Insert ShoppingCart
INSERT INTO ShoppingCart VALUES (1,1);
INSERT INTO ShoppingCart VALUES (2,1);

INSERT INTO ShoppingCart VALUES (3,2);
INSERT INTO ShoppingCart VALUES (4,2);
