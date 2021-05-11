EXEC tSQLt.NewTestClass 'LostAndFound_CalculateHandling_Tests';
GO

CREATE PROCEDURE LostAndFound_CalculateHandling_Tests.[Test1]
AS
BEGIN

	DECLARE @ActualCost NUMERIC(10,2);
  
	SET @ActualCost = (Select LostAndFound.CalcualteHandling (10));

	EXEC tSQLt.AssertEquals @Expected = 37, @Actual = @ActualCost;

  --EXEC tSQLt.Fail 'TODO';
END
GO