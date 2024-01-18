--Project2 BookStore Database
--Mostafa Al-sawaf 12/11/2022
--Step3VIEW
USE CIS111_BookStore_MMA
--If view is created we drop it
IF OBJECT_ID('BuyHistory') IS NOT NULL
 DROP VIEW BuyHistory
 GO
 --Create view that shows buying history of customers
 CREATE VIEW BuyHistory AS
 --What data we want to show
	SELECT Orders.OrderID, Orders.CustomerID, FirstName+ ' '+LastName AS [Customer Name],
			BookName, Price, Quantity, [Online], OrderDate
--Joining the tables so information shows correctly
	FROM Orders JOIN Customers ON Orders.CustomerID = Customers.CustomerID JOIN
		OrderDetails ON Orders.OrderID = OrderDetails.OrderID JOIN BookInventory
		ON OrderDetails.BookID = BookInventory.BookID
GO
--Show the view
SELECT *
FROM BuyHistory