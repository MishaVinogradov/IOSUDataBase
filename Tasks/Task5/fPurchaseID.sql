CREATE FUNCTION dbo.fPurchaseID
(
	@PurchaseU VARCHAR(255)
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Purchase UNIQUEIDENTIFIER = (SELECT ID FROM Purchase WHERE PurchaseU = @PurchaseU);
	RETURN @ID_Purchase;
END;