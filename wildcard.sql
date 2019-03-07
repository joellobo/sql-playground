Wildcard Characters in SQL Server
Symbol 	Description 	Example
% 	Represents zero or more characters 	                    bl% finds bl, black, blue, and blob
_ 	Represents a single character 	                        h_t finds hot, hat, and hit
[] 	Represents any single character within the brackets 	h[oa]t finds hot and hat, but not hit
^ 	Represents any character not in the brackets  	        h[^oa]t finds hit, but not hot and hat
- 	Represents a range of characters 	                    c[a-b]t finds cat and cbt

CREATE TABLE Customers (
    CustomerID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

INSERT INTO Customers (CustomerID,LastName,FirstName,Address,City) VALUES (1,'Jose','Silva','777 Brockton Avenue','Abington');
INSERT INTO Customers (CustomerID,LastName,FirstName,Address,City) VALUES (1,'Jose','Silva','777 Brockton Avenue','Abington');
INSERT INTO Customers (CustomerID,LastName,FirstName,Address,City) VALUES (1,'Jose','Silva','777 Brockton Avenue','Abington');
INSERT INTO Customers (CustomerID,LastName,FirstName,Address,City) VALUES (1,'Jose','Silva','777 Brockton Avenue','Abington');
INSERT INTO Customers (CustomerID,LastName,FirstName,Address,City) VALUES (1,'Jose','Silva','777 Brockton Avenue','Abington');
INSERT INTO Customers (CustomerID,LastName,FirstName,Address,City) VALUES (1,'Jose','Silva','777 Brockton Avenue','Abington');
INSERT INTO Customers (CustomerID,LastName,FirstName,Address,City) VALUES (1,'Jose','Silva','777 Brockton Avenue','Abington');
INSERT INTO Customers (CustomerID,LastName,FirstName,Address,City) VALUES (1,'Jose','Silva','777 Brockton Avenue','Abington');

SELECT * FROM Customers 
WHERE City LIKE 'ber%'; 

SELECT * FROM Customers
WHERE City LIKE '%es%';

SELECT * FROM Customers
WHERE City LIKE '_erlin';

SELECT * FROM Customers
WHERE City LIKE 'L_n_on';

SELECT * FROM Customers
WHERE City LIKE '[bsp]%';

SELECT * FROM Customers
WHERE City LIKE '[a-c]%';

SELECT * FROM Customers
WHERE City LIKE '[!bsp]%'; 

SELECT * FROM Customers
WHERE City NOT LIKE '[bsp]%'; 



