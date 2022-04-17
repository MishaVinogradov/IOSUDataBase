CREATE FUNCTION dbo.fStorageMediumID
(
	@StorageMediumType VARCHAR(50)
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_StorageMedium UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM StorageMedium
			WHERE StorageMediumType = @StorageMediumType);
	RETURN @ID_StorageMedium;
END;