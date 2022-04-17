CREATE PROC pFilmInsert
(
	@Name VARCHAR(255),
	@Description VARCHAR(255),
	@Duration INT,

	@CountryName VARCHAR(255),

	@GenreName VARCHAR(255),

	@DirectorFirstName VARCHAR(255),
	@DirectorLastName VARCHAR(255),
    @DirectorBirthdate DATE
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			
			DECLARE @ID_Country UNIQUEIDENTIFIER = dbo.fCountryID(@CountryName);
			
			DECLARE @ID_Genre UNIQUEIDENTIFIER = dbo.fGenreID(@GenreName);

			DECLARE @ID_Director UNIQUEIDENTIFIER = dbo.fDirectorID(@DirectorFirstName, @DirectorLastName, @DirectorBirthdate);

			INSERT INTO Film
			VALUES(NEWID(), @Name, @Description, @Duration, @ID_Country, @ID_Genre, @ID_Director)
		COMMIT TRAN
	END TRY
	BEGIN CATCH
	    ROLLBACK;
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT 
			@ErrorMessage = ERROR_MESSAGE(),
			@ErrorSeverity = ERROR_SEVERITY(),
			@ErrorState = ERROR_STATE();

		RAISERROR	(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH;
END;