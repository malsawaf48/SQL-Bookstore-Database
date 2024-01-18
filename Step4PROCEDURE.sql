--Project2 BookStore Database
--Mostafa Al-sawaf 12/11/2022
--Step4PROCEDURE
USE CIS111_BookStore_MMA
--If EmployeeSales is already there it will be dropped
IF OBJECT_ID('EmployeeSales') IS NOT NULL
	DROP PROC EmployeeSales
GO
--Create EmployeeSales Procedure
CREATE PROC EmployeeSales AS
--The data we want to show
	SELECT Orders.EmployeeID, Orders.OrderID, Orders.CustomerID,
		Employees.FirstName + ' ' +Employees.LastName AS [Employee Name],
		BookName, Customers.FirstName + ' ' +Customers.LastName AS [Customer Name]
		,OrderDate
--The tables we will get the tables from
	FROM Orders JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
		JOIN Customers ON Orders.CustomerID = Customers.CustomerID JOIN
		OrderDetails ON OrderDetails.OrderID = Orders.OrderID JOIN
		BookInventory ON OrderDetails.BookID = BookInventory.BookID
GO
--Run and show procedure
EXEC EmployeeSales

