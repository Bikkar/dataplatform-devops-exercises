EXEC tSQLt.NewTestClass 'Marketing_EmailList_Tests';
GO

CREATE PROCEDURE Marketing_EmailList_Tests.[test view is empty if there are no customers]
AS
BEGIN
	-- Assemble
	EXEC tsqlt.FakeTable 'Booking.Customers';

	-- Act
	Select * INTO #actual FROM Marketing.EmailList;

	-- Assert
	EXEC tSQLt.AssertEmptyTable '#actual';
END
GO