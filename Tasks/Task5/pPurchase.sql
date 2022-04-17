CREATE PROC pPurchaseInsert
(
	@PurchaseU VARCHAR(255),
	@PurchaseDate DATE,
	@CreditCard VARCHAR(255),
	@TelephoneNumber VARCHAR(255)
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			INSERT INTO Purchase
			VALUES(NEWID(), @PurchaseU, @PurchaseDate, @CreditCard, @TelephoneNumber)
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