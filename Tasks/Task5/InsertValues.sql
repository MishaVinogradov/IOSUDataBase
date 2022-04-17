-- Insert Directors
EXEC dbo.pDirectorInsert 'Quentin', 'Tarantino', '1963-03-27', NULL
EXEC dbo.pDirectorInsert 'Stanley', 'Kubrick', '1928-07-26', '1999-03-07'

-- Insert Storage Medium
EXEC dbo.pStorageMediumInsert 'CD'
EXEC dbo.pStorageMediumInsert 'Tape'
EXEC dbo.pStorageMediumInsert 'Online'

-- Insert Countries
EXEC dbo.pCountryInsert 'United States'
EXEC dbo.pCountryInsert 'United Kingdom'

-- Insert Genres
EXEC dbo.pGenreInsert 'Action'
EXEC dbo.pGenreInsert 'Adventure'
EXEC dbo.pGenreInsert 'Drama'
EXEC dbo.pGenreInsert 'Thriller'

--Insert Film
EXEC dbo.pFilmInsert 'Pulp Fiction', 'Cool', 120, 'United States', 'Action', 'Quentin', 'Tarantino', '1963-03-27'
EXEC dbo.pFilmInsert 'Django Unchained', 'Piw pow', 150, 'United States', 'Action', 'Quentin', 'Tarantino', '1963-03-27'
EXEC dbo.pFilmInsert 'A Clockwork Orange', 'Wow', 152, 'United States', 'Adventure', 'Stanley', 'Kubrick', '1928-07-26'

--Insert Actors
EXEC dbo.pActorInsert 'John', 'Travolta','1954-02-18', NULL
EXEC dbo.pActorInsert 'Samuel', 'L.Jackson','1948-12-21', NULL
EXEC dbo.pActorInsert 'Malcolm', 'McDowell','1943-06-13', NULL

--Insert Cast
EXEC dbo.pCastInsert 'Pulp Fiction', 'John', 'Travolta', '1954-02-18'
EXEC dbo.pCastInsert 'Pulp Fiction', 'Samuel', 'L.Jackson', '1948-12-21'
EXEC dbo.pCastInsert 'Django Unchained', 'Samuel', 'L.Jackson', '1948-12-21'
EXEC dbo.pCastInsert 'A Clockwork Orange', 'Malcolm', 'McDowell', '1943-06-13'

--Insert Catologue
EXEC dbo.pCatalogueInsert '54T5GGREG', 'Pulp Fiction',1,1, 'CD'
EXEC dbo.pCatalogueInsert '54TFJISDF', 'Pulp Fiction',1,1, 'Tape'
EXEC dbo.pCatalogueInsert 'FWEFWEF43', 'Django Unchained',11,1,'Online'


EXEC dbo.pCatalogueInsert '54T5G34N34', 'Pulp Fiction',1,0, 'CD'
EXEC dbo.pCatalogueInsert '54TF34H34C', 'Pulp Fiction',1,0, 'Tape'
EXEC dbo.pCatalogueInsert 'FWEF34S343', 'Django Unchained',11,0,'Online'
--Insert Purchase
EXEC dbo.pPurchaseInsert 'FWEFWER', '1999-04-12','1234 3242 4234 3243', '5435323443'
EXEC dbo.pPurchaseInsert 'FWEFDFR', '2000-04-12','1234 3242 4234 4234', '5435322342'

--Insert ShoppingCart
EXEC dbo.pShoppingCartInsert '54T5GGREG', 'FWEFWER'
EXEC dbo.pShoppingCartInsert '54TFJISDF', 'FWEFWER'

EXEC dbo.pShoppingCartInsert '54TFJISDF', 'FWEFDFR'
