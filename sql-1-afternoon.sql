-- Table - People
-- #1
CREATE TABLE Person (
  id SERIAL PRIMARY KEY AUTOINCREMENT,
  Name STRING,
  Age INTEGER,
  Height INTEGER,
  City STRING,
  FavoriteColor STRING
);

-- #2
INSERT INTO Person (Name, Age, Height, City, FavoriteColor)
VALUES ('Chad', 24, 200, 'Spokane, WA', 'blue'),
('Hunter', 18, 180, 'Temecula, CA', 'purple'),
('Summer', 24, 170, 'Spokane, WA', 'orange'),
('Kendra', 25, 150, 'Salem, OR', 'pink'),
('Caden', 24, 180, 'Spokane, WA', 'blue');

-- #3
SELECT * FROM Person
ORDER BY Height DESC;

-- #4
SELECT * FROM Person
ORDER BY Height ASC;

-- #5
SELECT * FROM Person
ORDER BY Age DESC;

-- #6
SELECT * FROM Person
WHERE Age > 20;

-- #7
SELECT * FROM Person
WHERE Age = 18;

-- #8
SELECT * FROM Person
WHERE Age < 20 OR Age > 30;

-- #9
SELECT * FROM Person
WHERE Age != 27;

-- #10
SELECT * FROM Person
WHERE FavoriteColor != 'red';

-- #11
SELECT * FROM Person
WHERE FavoriteColor != 'red' AND FavoriteColor != 'blue';

-- #12
SELECT * FROM Person
WHERE FavoriteColor = 'orange' OR FavoriteColor = 'green';

-- #13
SELECT * FROM Person
WHERE FavoriteColor IN ('blue', 'green', 'orange');

-- #14
SELECT * FROM Person
WHERE FavoriteColor IN ('yellow', 'purple');


-- Table - Orders
-- #1
CREATE TABLE Orders (
    PersonID INTEGER,
    ProductName STRING,
    ProductPrice FLOAT,
    Quantity INTEGER
);

-- #2
INSERT INTO Orders (PersonID, ProductName, ProductPrice, Quantity)
VALUES (0, 'Yo-Yo', 3.25, 2),
(1, 'Top', 1.25, 1),
(2, 'Kite', 6.75, 3),
(3, 'Bat', 10.00, 1),
(4, 'Frisbee', 5.00, 5);

-- #3
SELECT * FROM Orders;

-- #4
SELECT SUM(Quantity) FROM Orders;

-- #5
SELECT SUM(ProductPrice * Quantity) FROM Orders;

-- #6
SELECT SUM(ProductPrice * Quantity) 
FROM Orders
WHERE PersonID = 1;


-- Table - Artist
-- #1
INSERT INTO Artist(Name) 
VALUES ('2 Chainz'),
('Lil Pump'),
('Kanye West');

-- #2
SELECT * FROM Artist
ORDER BY Name DESC
LIMIT 10;

-- #3
SELECT * FROM Artist
ORDER BY Name ASC
LIMIT 5;

-- #4
SELECT * FROM Artist
WHERE Name LIKE 'Black%';

-- #5
SELECT * FROM Artist
WHERE Name LIKE '%Black%';


-- Table - Employee
-- #1
SELECT FirstName, LastName FROM Employee
WHERE City = 'Calgary';

-- #2
SELECT FirstName, LastName, Max(BirthDate) FROM Employee;

-- #3
SELECT FirstName, LastName, Min(BirthDate) FROM Employee;

-- #4
SELECT * FROM Employee
WHERE ReportsTo = 2;

-- #5
SELECT COUNT(*) FROM Employee
WHERE City = 'Lethbridge';


-- Table - Invoice
-- #1
SELECT COUNT(*) FROM Invoice
WHERE BillingCountry = 'USA';

-- #2
SELECT Max(Total) FROM Invoice;

-- #3
SELECT Min(Total) FROM Invoice;

-- #4
SELECT * FROM Invoice
WHERE Total > 5;

-- #5
SELECT Count(*) FROM Invoice
WHERE Total < 5;

-- #6
SELECT Count(*) FROM Invoice
WHERE BillingState In ('AZ', 'CA', 'TX');

-- #7
SELECT AVG(Total) FROM Invoice;

-- #8
SELECT SUM(Total) FROM Invoice;

