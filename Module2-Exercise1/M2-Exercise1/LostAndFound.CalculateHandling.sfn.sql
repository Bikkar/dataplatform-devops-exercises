CREATE FUNCTION LostAndFound.CalcualteHandling (@RewardsBalance INT)
RETURNS int
WITH EXECUTE AS CALLER
AS
BEGIN
	DECLARE @Handling_Cost AS INT;
    IF @RewardsBalance > 10000
	BEGIN
		SET @Handling_Cost = 0;
	END
	ELSE
		SET @Handling_Cost = 37;

	RETURN (@Handling_Cost);
END;
GO	