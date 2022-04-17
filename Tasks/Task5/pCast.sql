CREATE PROC pCastInsert
(
	@FilmName VARCHAR(255),
	@FirstName VARCHAR(255),
	@LastName VARCHAR(255),
	@Birthdate DATE

)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			
			DECLARE @ID_Film UNIQUEIDENTIFIER = dbo.fFilmID(@FilmName);

			DECLARE @ID_Actor UNIQUEIDENTIFIER = dbo.fActorID(@FirstName, @LastName, @Birthdate);

			INSERT INTO [Cast]
			VALUES(NEWID(), @ID_Film, @ID_Actor)
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
