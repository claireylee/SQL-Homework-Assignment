SELECT name FROM country WHERE Continent = "South America";
SELECT Population FROM country WHERE Name = "Germany";
SELECT name FROM city WHERE CountryCode = "JPN";
SELECT Name, Population FROM country WHERE Continent = "Africa" ORDER BY Population DESC LIMIT 3;
SELECT Name, LifeExpectancy FROM country WHERE Population BETWEEN 1000000 AND 5000000;
SELECT country.name FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language = "French" AND countrylanguage.IsOfficial = "T";
SELECT Title FROM Album WHERE ArtistId = 1
SELECT FirstName, LastName, Email from Customer WHERE Country = "Brazil";
SELECT Name FROM Playlist;
SELECT COUNT(*) AS TotalTracks FROM Track WHERE GenreId = ( SELECT GenreId FROM Genre WHERE Name = 'Rock' );
SELECT FirstName, LastName FROM Employee WHERE ReportsTo = (SELECT EmployeeId FROM Employee WHERE FirstName = 'Nancy' AND LastName = 'Edwards');
SELECT CustomerId, SUM(Total) AS TotalSales FROM Invoice GROUP BY CustomerId;



CREATE DATABASE ngt9dz; 
use ngt9dz;

CREATE TABLE Breed (CatID INT PRIMARY KEY AUTO_INCREMENT, Name VarChar(20), Weight Decimal(10, 2), Length Decimal(10, 2));

CREATE TABLE Customers(CustomerID INT PRIMARY KEY AUTO_INCREMENT, FirstName VARCHAR(50), LastName VARCHAR(50), PhoneNumber VARCHAR (15));

CREATE TABLE Prices(PriceID INT PRIMARY KEY AUTO_INCREMENT, Price VARCHAR(50), Food VARCHAR(50), Toys VARCHAR(50));


INSERT INTO Breed (Name, Weight, Length) VALUES ("Ragdoll", 15, 20), ("Scottish Fold", 7, 20), ("Maine Coon", 15, 19), ("Selkirk Rex", 16, 30), ("Russian Blue", 10, 20);

INSERT INTO Customers (FirstName, LastName, PhoneNumber) VALUES ("Claire", "Lee", "999-999-9999"), ("Andrew", "Bak", "100-100-1000"), ("Justin", "Lee", "801-901-7011"), ("Gloria", "Ren", "888-888-8888"), ("Tae", "Lee", "111-111-1111");

INSERT INTO Prices (Price, Food, Toys) VALUES ("2500", "50", "20"), ("1000", "30", "30"), ("1500", "40", "70"), ("500", "50", "10"), ("2000", "90", "10");


SELECT Name from Breed WHERE Weight = (SELECT MAX(Weight)FROM Breed);
SELECT FirstName, LastName, PhoneNumber FROM Customers WHERE PhoneNumber LIKE '%111%';
SELECT DISTINCT LastName FROM Customers;
