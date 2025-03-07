Create table Products1
(
	ProductID INT PRIMARY KEY IDENTITY(1,1),
	ProductName VARCHAR(50),
	SupplierID INT,
    CategoryID INT,
	QuantityPerUnit INT,
	UnitPrice INT ,
	UnitsInStock INT,
	UnitsOnOrder INT,
	ReorderLevel INT,
	Discontinued CHAR(5)
)
GO
SET IDENTITY_INSERT PRODUCTS1 ON
GO

INSERT INTO PRODUCTS1 ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES
(1, 'PHONE', 1,10,5,42,14,2,3,'y'),
(2, 'LAPTOP', 2,11,6,14,10,2,3,'N'),
(3, 'IPAD', 3,12,15,20,11,2,3,'y'),
(4, 'MACBOOK', 4,13,8,12,14,2,3,'y'),
(5, 'GOOGLEPIXEL', 5,14,3,21,14,2,3,'N'),
(6, 'SAMSUNG', 6,15,7,8,14,2,3,'y'),
(7, 'TV', 7,16,5,30,14,2,3,'y'),
(8, 'ACTIVA', 8,17,1,32,14,2,3,'N'),
(9, 'CAR', 9,18,25,21,28,2,3,'y'),
(10, 'CRETA', 10,19,11,10,14,2,3,'y');
GO

SELECT * FROM Products1

--Write a query to get a Product list (id, name, unit price) where current products cost less than $20.

select ProductID,ProductName,UnitPrice from products1 where UnitPrice<20;
Go

--Write a query to get Product list (id, name, unit price) where products cost between $15 and $25

select ProductID,ProductName,UnitPrice from products1 where UnitPrice between 15 and 25;
Go

-- Write a query to get Product list (name, unit price) of above average price. 
select productname,unitprice from products1 where unitprice > (select AVG(unitprice) from products1) ;
GO

--Write a query to get Product list (name, unit price) of ten most expensive products
SELECT top(10) PRODUCTNAME,UNITPRICE FROM PRODUCTS1 ORDER BY UNITPRICE DESC;
GO

--Write a query to count current and discontinued products
select Discontinued,count (Discontinued) from Products1 group by Discontinued  ;
GO 

INSERT INTO PRODUCTS1 ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES
(11, 'cycle', 11,10,5,42,1,2,3,'y'),
(12, 'bottle', 12,11,6,14,0,2,3,'N');
go

--Write a query to get Product list (name, units on order , units in stock) of stock is less than the quantity on order
SELECT productname,UnitsOnOrder,UnitsInStock from Products1 where UnitsOnOrder>UnitsInStock;
GO