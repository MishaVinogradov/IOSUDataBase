CREATE FUNCTION dbo.fActorID
(	
	@FirstName VARCHAR(255),
	@LastName VARCHAR(255),
	@Birthdate DATE
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Actor UNIQUEIDENTIFIER = (SELECT ID FROM Actor WHERE FirstName = @FirstName AND LastName = @LastName AND
			Birthdate = @Birthdate);
	RETURN @ID_Actor;
END;