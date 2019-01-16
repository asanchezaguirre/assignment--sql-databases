/*Table - Artist
Instructions
Add 15 new Artists to the Artist table. (ArtistId, Name)*/

INSERT INTO Artist (Name) VALUES ("La Barranca");
INSERT INTO Artist (Name) VALUES ("Adam Green");
INSERT INTO Artist (Name) VALUES ("Air");
INSERT INTO Artist (Name) VALUES ("Chancha Via Circuito");
INSERT INTO Artist (Name) VALUES ("Jarvis Cocker");
INSERT INTO Artist (Name) VALUES ("Ramiro Mussotto");
INSERT INTO Artist (Name) VALUES ("Karen O");
INSERT INTO Artist (Name) VALUES ("Beck");
INSERT INTO Artist (Name) VALUES ("Little Jesus");
INSERT INTO Artist (Name) VALUES ("Julian Casablancas");
INSERT INTO Artist (Name) VALUES ("Sean Ono Lennon");
INSERT INTO Artist (Name) VALUES ("Sheer Mag");
INSERT INTO Artist (Name) VALUES ("Damon Albarn");
INSERT INTO Artist (Name) VALUES ("My Bloody Valentine");
INSERT INTO Artist (Name) VALUES ("The White Stripes");


/*Select 10 artists in reverse alphabetical order.*/
SELECT * FROM Artist ORDER BY Name DESC LIMIT 10;

/*Select 5 artists in alphabetical order.*/
SELECT * FROM Artist ORDER BY Name LIMIT 5;

/*Select all artists that start with the word "Black".*/
SELECT * FROM Artist WHERE Name  LIKE "Black%";

/*Select all artists that contain the word "Black".*/
SELECT * FROM Artist WHERE Name LIKE "%Black%";


/*
Table - Employee
Instructions
List all Employee first and last names only that live in Calgary.*/
SELECT FirstName, Lastname FROM Employee WHERE City="Calgary";

/*Find the first and last name and birthdate for the youngest employee.*/
SELECT FirstName, Lastname, BirthDate, MAX(BirthDate) FROM Employee;

/*Find the first and last name and birthdate for the oldest employee.*/
SELECT FirstName, Lastname, BirthDate, MIN(BirthDate) FROM Employee;

/*Find everyone that reports to Nancy Edwards (Use the ReportsTo column).*/
SELECT * FROM Employee WHERE ReportsTo=2;

/*You will need to query the employee table to find the Id for Nancy Edwards*/
SELECT EmployeeId FROM Employee WHERE LastName= "Edwards" AND FirstName="Nancy";

/*Count how many people live in Lethbridge.*/
SELECT COUNT(EmployeeId) AS total FROM Employee WHERE City="Lethbridge";

/*
Table - Invoice
Instructions
Count how many orders were made from the USA.*/
SELECT COUNT(Total) AS total FROM Invoice WHERE BillingCountry="USA";

/*Find the largest order total amount.*/
SELECT * , MAX(Total) FROM Invoice;

/*Find the smallest order total amount.*/
SELECT * , MIN(Total) FROM Invoice;

/*Find all orders bigger than $5.*/
SELECT * FROM Invoice WHERE Total>5;

/*Count how many orders were smaller than $5.*/
SELECT COUNT(*) AS total FROM Invoice WHERE Total<5;

/*Count how many orders were in CA, TX, or AZ (use IN).*/
SELECT COUNT(*) AS total FROM Invoice WHERE BillingState IN ("CA", "TX", "AZ");

/*Get the average total of the orders.*/
SELECT AVG(Total) AS total FROM Invoice;

/*Get the total sum of the orders.*/
SELECT SUM(Total) AS total FROM Invoice;