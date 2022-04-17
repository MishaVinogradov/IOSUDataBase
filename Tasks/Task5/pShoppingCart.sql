CREATE PROC pShoppingCartInsert
(
	@CatalogueU VARCHAR(255),
	@PurchaseU VARCHAR(255)
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			
			DECLARE @ID_Catalogue UNIQUEIDENTIFIER = dbo.fCatalogueID(@CatalogueU);
			
			DECLARE @ID_Purchase UNIQUEIDENTIFIER = dbo.fPurchaseID(@PurchaseU);

			INSERT INTO ShoppingCart
			VALUES(NEWID(), @ID_Catalogue, @ID_Purchase)
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