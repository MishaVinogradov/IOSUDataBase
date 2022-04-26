CREATE FUNCTION dbo.fCountryID
(
	@CountryName VARCHAR(255)
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Country UNIQUEIDENTIFIER = (SELECT ID FROM Country WHERE [Name] = @CountryName);
	RETURN @ID_Country;
END;