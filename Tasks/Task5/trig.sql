CREATE TRIGGER PurchaseTrigger on Purchase
FOR INSERT
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @NewRecCreditCard VARCHAR(255)

	SET @NewRecCreditCard = (SELECT CreditCard FROM inserted);

	DECLARE @ID_Customer UNIQUEIDENTIFIER = (SELECT ID FROM Customer WHERE CreditCard = @NewRecCreditCard);


	IF @ID_Customer IS NOT NULL
	BEGIN
		UPDATE Customer
		SET Purchases = Purchases + 1
		WHERE ID = @ID_Customer
	END;
	ELSE
	BEGIN
		INSERT INTO Customer (CreditCard, Purchases)
		VALUES (@NewRecCreditCard, 1)
	END;
END;