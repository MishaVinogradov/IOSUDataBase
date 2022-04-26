CREATE PROC pDirectorInsert
(
	@FirstName VARCHAR(255),
	@LastName VARCHAR(255),
    @Birthdate DATE,
	@Deathdate DATE
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			INSERT INTO Director
			VALUES(NEWID(), @FirstName, @LastName, @Birthdate, @Deathdate)
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