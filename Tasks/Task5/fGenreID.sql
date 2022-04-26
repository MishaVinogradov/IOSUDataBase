CREATE FUNCTION dbo.fGenreID
(
	@GenreName VARCHAR(255)
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Genre UNIQUEIDENTIFIER = (SELECT ID FROM Genre WHERE [Name] = @GenreName);
	RETURN @ID_Genre;
END;