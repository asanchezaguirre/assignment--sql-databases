CREATE DATABASE asanchezaguirre;

USE asanchezaguirre;

CREATE TABLE Person(
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR (100) NOT NULL,
    Age INT(3),
    Height INT(3),
    City VARCHAR (60),
    FavoriteColor VARCHAR (30)
);

INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Addy Osmani", 20, 178, "California", "yellow");
INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Paul Irish", 25, 191, "Austin", "orange");
INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Eric Elliot", 30, 165, "Portland", "blue");
INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Jack Wilshere", 18, 189, "San Francisco", "purple");
INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Ayrton Senna", 32, 170, "Texas", "green");




/*Enliste a todas las personas en la tabla Persona por Altura desde la más alta a la más baja.*/
SELECT * FROM Person  ORDER BY Height DESC;

/*Enliste a todas las personas en la tabla de Personas por Altura desde la más corta a la más alta.*/
SELECT * FROM Person ORDER BY Height;

/*Enliste todas las personas en la tabla de Personas por Edad, desde la más antigua hasta la más joven.*/
SELECT * FROM Person ORDER BY Age DESC;

/*Enliste todas las personas en la tabla de Personas mayores de 20 años.*/
SELECT * FROM Person WHERE Age > 20;

/*Enliste a todas las personas en la tabla de Personas que son exactamente 18.*/
SELECT * FROM Person WHERE Age = 18;

/*Enliste todas las personas en la tabla de Personas que tengan menos de 20 años y más de 30.*/
SELECT * FROM Person WHERE Age NOT BETWEEN 20 AND 30;

/*Enliste a todas las personas en la tabla de Personas que no son 27 (Use no es igual a).*/
SELECT * FROM Person WHERE Age <> 27;

/*Haga una lista de todas las personas en la tabla de Personas donde su color favorito no es el rojo.*/
SELECT * FROM Person WHERE FavoriteColor NOT LIKE "red";

/*Haga una lista de todas las personas en la tabla de Personas donde su color favorito no es rojo y no es azul.*/
SELECT * FROM Person WHERE (FavoriteColor NOT LIKE "red") AND (FavoriteColor NOT LIKE "blue");


/*Haga una lista de todas las personas en la tabla de Personas donde su color favorito es naranja o verde.*/
SELECT * FROM Person WHERE (FavoriteColor LIKE "orange") OR (FavoriteColor LIKE "green");

/*Enliste a todas las personas en la tabla de Personas donde su color favorito es naranja, verde o azul (use IN).*/
SELECT * FROM Person WHERE FavoriteColor IN ("orange", "green", "blue");

/*Enliste a todas las personas en la tabla de Personas donde su color favorito es amarillo o púrpura (use IN).*/
SELECT * FROM Person WHERE FavoriteColor IN ("yellow", "purple");


/*Table - Orders*/
/*Create a table called Orders that records: PersonID, ProductName, ProductPrice, Quantity.*/

CREATE TABLE Orders(
	Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PersonId INT,
    ProductName VARCHAR (200) NOT NULL,
    ProductPrice DECIMAL (4,2),
  	Quantity INT (2),
  	FOREIGN KEY (PersonId) REFERENCES Person(Id)
);

/*Add 5 Orders to the Orders table.
Make orders for at least two different people.
PersonID should be different for different people.*/

INSERT INTO Orders (PersonId, ProductName, ProductPrice, Quantity) VALUES (1, "Chilaquiles", 25.00, 2);
INSERT INTO Orders (PersonId, ProductName, ProductPrice, Quantity) VALUES (2, "Tamales", 13.50, 1);
INSERT INTO Orders (PersonId, ProductName, ProductPrice, Quantity) VALUES (3, "Fruta", 39.00, 1);
INSERT INTO Orders (PersonId, ProductName, ProductPrice, Quantity) VALUES (3, "Sandwich", 20.00, 2);
INSERT INTO Orders (PersonId, ProductName, ProductPrice, Quantity) VALUES (1, "Tacos", 50.00, 1);

/*
Select all the records from the Orders table.*/
SELECT * FROM Orders;

/*Calculate the total number of products ordered.*/
SELECT SUM(Quantity) AS total FROM Orders;

/*Calculate the total order price.*/
SELECT SUM(Quantity * ProductPrice) AS total FROM Orders;

/*Calculate the total order price by a single PersonID*/
SELECT PersonId, SUM(Quantity * ProductPrice) AS total FROM Orders GROUP BY PersonId;
