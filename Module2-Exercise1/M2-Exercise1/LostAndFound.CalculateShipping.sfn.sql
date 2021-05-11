CREATE FUNCTION LostAndFound.CalcualteShipping (@HotelState VARCHAR(100), @ShippingState VARCHAR(100))
RETURNS int
WITH EXECUTE AS CALLER
AS
BEGIN
	DECLARE @Shipping_Cost AS INT;
    IF @HotelState = @ShippingState
	BEGIN
		SET @Shipping_Cost = 10;
	END
	ELSE
		SET @Shipping_Cost = 25;

	RETURN (@Shipping_Cost);
END;
GO