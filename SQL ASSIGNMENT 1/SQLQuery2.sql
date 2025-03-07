USE [chaityamehta_db]
GO

DELETE FROM [dbo].[Products1]
      WHERE ProductID=11
GO

select * from products1;
GO

SET IDENTITY_INSERT PRODUCTS1 Off
GO

INSERT INTO PRODUCTS1 ([ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES
('cycletrt', 11,10,5,42,1,2,3,'y')
GO

delete from products1 where ProductID=12;
GO
delete from products1 where ProductID=13;

SET IDENTITY_INSERT PRODUCTS1 ON
INSERT INTO PRODUCTS1 
([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) 
VALUES
(99,'PHONE2', 1,10,5,42,14,2,3,'y')