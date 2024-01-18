--Project2 BookStore Database
--Mostafa Al-sawaf 12/11/2022
--Step1DDL

--Create database if missing
IF DB_ID('CIS111_BookStore_MMA') IS NULL
 CREATE DATABASE CIS111_BookStore_MMA
GO
--Change the database
IF DB_ID('CIS111_BookStore_MMA') IS NOT NULL
 USE CIS111_BookStore_MMA
GO
--Drop all tables in CIS111_BookStore_MMA
IF OBJECT_ID('OrderDetails') IS NOT NULL
 DROP TABLE OrderDetails
IF OBJECT_ID('Orders') IS NOT NULL
 DROP TABLE Orders
IF OBJECT_ID('Customers') IS NOT NULL
 DROP TABLE Customers
IF OBJECT_ID('Employees') IS NOT NULL
 DROP TABLE Employees
IF OBJECT_ID('BookInventory') IS NOT NULL
 DROP TABLE BookInventory
IF OBJECT_ID('Suppliers') IS NOT NULL
 DROP TABLE Suppliers
GO
--Create tables for BookStore database

--Create Suppliers table for BookStore
USE CIS111_BookStore_MMA
CREATE TABLE Suppliers
(SupplierID INT NOT NULL IDENTITY PRIMARY KEY,
CompanyName VARCHAR(20) NOT NULL,
[Address] VARCHAR(35) NOT NULL,
ZIP VARCHAR(5) NOT NULL,
City VARCHAR(20) NOT NULL,
[State] VARCHAR(2) NOT NULL,
PhoneNumber VARCHAR(15) NOT NULL)
GO
--Create BookInventory table for BookStore
USE CIS111_BookStore_MMA
CREATE TABLE BookInventory
(BookID INT NOT NULL IDENTITY PRIMARY KEY,
SupplierID INT NOT NULL REFERENCES Suppliers (SupplierID),
BookName VARCHAR(45) NOT NULL,
Price SMALLMONEY NOT NULL,
Stock INT NOT NULL,
Ordered INT NOT NULL CHECK(Ordered > 0))
GO
--Create Customers table for BookStore database
USE CIS111_BookStore_MMA
CREATE TABLE Customers
(CustomerID INT NOT NULL IDENTITY PRIMARY KEY,
FirstName VARCHAR(20) NOT NULL,
LastName VARCHAR(20) NOT NULL,
[Address] VARCHAR(35) NOT NULL,
ZIP VARCHAR(5) NOT NULL,
City VARCHAR(20) NOT NULL,
[State] VARCHAR(2) NOT NULL,
PhoneNumber VARCHAR(15) NOT NULL)
GO
--Create Employees table for BookStore database
USE CIS111_BookStore_MMA
CREATE TABLE Employees
(EmployeeID INT NOT NULL IDENTITY PRIMARY KEY,
FirstName VARCHAR(20) NOT NULL,
LastName VARCHAR(20) NOT NULL,
Position VARCHAR(20) NOT NULL,
HireDate DATE NOT NULL,
BirthDate DATE NOT NULL,
[Address] VARCHAR(35) NOT NULL,
ZIP VARCHAR(5) NOT NULL,
City VARCHAR(20) NOT NULL,
[State] VARCHAR(2) NOT NULL,
PhoneNumber VARCHAR(15) NOT NULL)
GO
--Create Orders Table for BookStore
USE CIS111_BookStore_MMA
CREATE TABLE Orders
(OrderID INT NOT NULL PRIMARY KEY,
CustomerID INT NOT NULL REFERENCES Customers (CustomerID),
EmployeeID INT NOT NULL REFERENCES Employees (EmployeeID),
OrderDate DATETIME NOT NULL)
GO
--Create OrderDetails table for BookStore
USE CIS111_BookStore_MMA
CREATE TABLE OrderDetails
(OrderID INT NOT NULL REFERENCES Orders (OrderID),
BookID INT NOT NULL REFERENCES BookInventory (BookID),
Quantity INT NOT NULL CHECK(Quantity > 0),
[Online] CHAR(1) NOT NULL CHECK([Online] = 'Y' OR [Online] = 'N'))
GO