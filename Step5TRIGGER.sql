--Project2 BookStore Database
--Mostafa Al-sawaf 12/11/2022
--Step5TRIGGER
USE CIS111_BookStore_MMA
--Drop Trigger if it exists
IF OBJECT_ID('NoStock') IS NOT NULL
	DROP TRIGGER NoStock
GO
--Create NoStock trigger
CREATE TRIGGER NoStock ON OrderDetails
	AFTER INSERT, UPDATE AS
	IF (SELECT Stock FROM BookInventory WHERE BookID = (SELECT BookID FROM BookInventory where stock = 0)) = 0
		BEGIN
		PRINT 'BOOK HAS NO STOCK'
		DELETE FROM OrderDetails WHERE BookID = (SELECT BookID FROM BookInventory where stock = 0)
		END
GO
--Insert order that has a stock value of 0
INSERT OrderDetails VALUES
( 10, 3, 1, 'N')