CREATE FUNCTION dbo.fDirectorID
(	
	@FirstName VARCHAR(255),
	@LastName VARCHAR(255),
	@Birthdate DATE
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Director UNIQUEIDENTIFIER = (SELECT TOP 1 ID FROM Director WHERE FirstName = @FirstName AND LastName = @LastName AND
			Birthdate = @Birthdate);
	RETURN @ID_Director;
END;