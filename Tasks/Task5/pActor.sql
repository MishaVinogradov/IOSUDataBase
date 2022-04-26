CREATE PROC pActorInsert
(
	@FirstName VARCHAR(255),
	@LastName VARCHAR(255),
	@Birthdate DATE,
	@Deatdate DATE
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			INSERT INTO Actor
			VALUES(NEWID(), @FirstName, @LastName, @Birthdate, @Deatdate)
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