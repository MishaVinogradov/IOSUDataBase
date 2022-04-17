CREATE PROC pCatalogueInsert
(
	@CatalogueU VARCHAR(255),
	@FilmName VARCHAR(255),
	@Price INT,
	@Status BIT,
	@StorageMediumType VARCHAR(255)
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			
			DECLARE @ID_Film UNIQUEIDENTIFIER = dbo.fFilmID(@FilmName);

			DECLARE @ID_StorageMedium UNIQUEIDENTIFIER = dbo.fStorageMediumID(@StorageMediumType);

			INSERT INTO Catalogue
			VALUES(NEWID(), @CatalogueU, @ID_Film, @Price, @Status, @ID_StorageMedium)
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
