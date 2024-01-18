--Project2 BookStore Database
--Mostafa Al-sawaf 12/11/2022
--Step2DML
USE CIS111_BookStore_MMA
--Add data to tables in database

--Add data to Suppliers table
INSERT Suppliers VALUES
('Amazon', '410 Terry Ave N', '98109', 'Seattle', 'WA', '(877)-375-9365'),
('Barnes & Noble', '4122 FIFTH AVE', '10011', 'New York City', 'NY', '(800)-843-2665'),
('Target', '1000 Nicollet Mall', '55403', 'Minneapolis', 'MN', '(612)-304-6073'),
('Walmart', '702 S.W. 8th St.', '72716', 'Bentonville', 'AR', '(479)-273-4000'),
('eBay', '2145 Hamilton Avenue', '95125', 'San Jose', 'CA', '(408)-516-8811'),
('Title Wave Books', '1360 NorthernLights blv.', '95125', 'Anchorage', 'AK', '(907)-278-9283'),
('Green Apple Books', '506 Clement St.', '94118', 'San Francisco', 'CA', '(415)-387-2272'),
('Tattered Cover', '2526 East Colfax Avenue', '80206 ', 'Denver', 'CO', '(303)-322-7727'),
('Andersons Bookshop', '5112 Main St', '60515', 'Downers Grove', 'IL', '(630)-963-2665'),
('Rainy Day Books', '2706 W 53rd Street', '66205', 'Fairway', 'KS', '(913)-384-3126')
GO
--Add data to BookInventory table
INSERT BookInventory VALUES
(2, 'Harry Potter and the Philosophers Stone', '$20.00', 30, 10),
(5, 'The Hobbit', '$24.99', 20, 3),
(9, 'Charlottes Web', '$15.00', 15, 12),
(8, 'The Tale of Peter Rabbit', '$28.99', 33, 7),
(10, 'To Kill a Mockingbird', '$10.00', 10, 3),
(3, 'The Diary of Anne Frank', '$23.00', 42, 18),
(1, 'Animal Farm', '$17.99', 23, 5),
(4, 'Dune', '$13.50', 8, 2),
(8, 'Jaws', '$44.99', 80, 4),
(6, 'The Hunger Games', '$26.99', 27, 8),
(2, 'Harry Potter and the Goblet of Fire', '$20.00', 0, 10)
GO
--Add data to Customers table
INSERT Customers VALUES
('Jonathon', 'Hightower', '7216 Rosewood Ave.', '19002', 'Ambler', 'PA', '(347)-221-7850'),
('Marion', 'Dale', '8291 Gates St.', '43537', 'Maumee', 'OH', '(847)-932-2932'),
('Silvester', 'Ibbot', '9509 Nichols Street', '60091', 'Wilmette', 'IL', '(626)-552-5958'),
('Jerald', 'Outlaw', '8817 1st Dr.', '30014', 'Covington', 'GA', '(646)-207-6850'),
('June', 'Frank', '9534 Marlborough St.', '42431', 'Madisonville', 'KY', '(530)-678-8967'),
('Curt', 'Audley', '8875 Old Water St.', '46530', 'Granger', 'IN', '(551)-777-6413'),
('Elmer', 'Berry', '8117 County St.', '27360', 'Thomasville', 'NC', '(915)-680-8001'),
('Ozzy', 'Merrill', '7553 Hilldale Ave.', '13501', 'Utica', 'NY', '(334)-647-2203'),
('Brenda', 'Garfield', '7491 Lilac Rd.', '46322', 'Highland', 'IN', '(432)-447-7024'),
('Bernadine', 'Augustine', '7501 Tanglewood St.', '49509', 'Wyoming', 'MI', '(313)-843-5173')
GO
--Add data to Employees table
INSERT Employees VALUES
('Madge', 'Alan', 'Manager', '2020-11-08', '1991-08-01', '7118 W. Fairway Drive', '11772', 'Patchogue', 'NY', '(681)-242-0307'),
('Diane', 'Levitt', 'Cashier', '2020-02-15', '1985-02-05', '9985 Riverside Street', '08816', 'East Brunswick', 'NJ', '(559)-270-8206'),
('Shawn', 'Michaels', 'Cashier', '2019-10-23', '2000-10-26', '7484 Philmont Lane', '17325', 'Gettysburg', 'PA', '(515)-963-2084'),
('Roddy', 'Donaldson', 'Manager', '2018-01-21', '1995-08-27', '9109 Atlantic Dr.', '38017', 'Collierville', 'TN', '(785)-215-3981'),
('Beulah', 'Darnell', 'Cashier', '2021-03-04', '1999-04-17', '9884 Rock Maple Lane', '21009', 'Abingdon', 'MD', '(520)-703-6513'),
('Julie', 'Lynn', 'Cashier', '2022-07-08', '2003-04-15', '8019 South Orange St.', '24112', 'Martinsville', 'VA', '(919)-930-5477'),
('Denice', 'Tyson', 'Cashier', '2017-10-16', '1995-06-06', '7448 South Lane', '80241', 'Thornton', 'CO', '(503)-514-0445'),
('Brandt', 'Vernon', 'Cashier', '2021-09-18', '1997-11-11', '8752 Manhattan Road', '07712', 'Asbury Park', 'NJ', '(214)-235-6297'),
('Katie', 'Herbert', 'Cashier', '2021-07-03', '2004-04-19', '9650 Hall Dr.', '21227', 'Halethorpe', 'MD', '(302)-659-6045'),
('Phil', 'Webb', 'Cashier', '2020-11-08', '1990-04-01', '8706 King St.', '08844', 'Hillsborough', 'NJ', '(617)-383-3150')
GO
INSERT Orders VALUES
(1, 4, 3, '2022-03-23 13:50:12'),
(2, 1, 6, '2022-01-06 17:30:56'),
(3, 3, 10, '2022-11-26 23:34:42'),
(4, 9, 9, '2022-07-13 22:56:43'),
(5, 7, 6, '2022-04-03 16:23:13'),
(6, 5, 9, '2022-10-17 13:25:14'),
(7, 7, 8, '2022-12-19 07:57:26'),
(8, 2, 9, '2022-09-29 07:12:11'),
(9, 3, 7, '2022-11-07 01:43:34'),
(10, 5, 5, '2022-06-18 22:45:45')
GO
INSERT OrderDetails VALUES
(1, 5, 1, 'Y'),
(2, 1, 3, 'N'),
(3, 2, 4, 'Y'),
(4, 6, 1, 'N'),
(5, 8, 8, 'Y'),
(6, 9, 2, 'N'),
(7, 10, 9, 'Y'),
(8, 3, 6, 'N'),
(9, 4, 4, 'Y'),
(10, 7, 1, 'N')
GO