CREATE FUNCTION dbo.fCatalogueID
(
	@CatalogueU VARCHAR(255)
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Catalogue UNIQUEIDENTIFIER = (SELECT ID FROM Catalogue WHERE CatalogueU = @CatalogueU);
	RETURN @ID_Catalogue;
END;