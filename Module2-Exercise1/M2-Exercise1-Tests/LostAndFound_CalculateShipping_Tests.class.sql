EXEC tSQLt.NewTestClass 'LostAndFound_CalculateShipping_Tests';
GO

CREATE PROCEDURE LostAndFound_CalculateShipping_Tests.[test something]
AS
BEGIN

	DECLARE @ActualCost NUMERIC(10,2);
  
	SET @ActualCost = (Select LostAndFound.CalcualteShipping ('Alberta', 'Alberta'));

	EXEC tSQLt.AssertEquals @Expected = 10, @Actual = @ActualCost;

  --EXEC tSQLt.Fail 'TODO';
END
GO