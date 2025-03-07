--write a SQL query to Create Stored procedure in the Northwind database to retrieve
--Ten Most Expensive Products

create PROCEDURE TOP10EXPENSIVE
as  
begin 
SELECT top 10 ProductID,ProductName,UnitPrice from Products1 order by UnitPrice Desc
end

exec TOP10EXPENSIVE

--write a SQL query to Create Stored procedure in the Northwind database to insert
--Customer Order Details 

create PROCEDURE insertcustomerorder
@ord_no int ,@purch_amt int ,@ord_date date,@customer_id int ,@salesman_id int 
as   
begin 
	INSERT INTO [dbo].[ORDERS]
	([ord_no], 
	[purch_amt], 
	[ord_date], 
	[customer_id], 
	[salesman_id])
	values 
	(@ord_no
	,@purch_amt
	,@ord_date
	,@customer_id
	,@salesman_id);
end
SET IDENTITY_INSERT ORDERS ON

EXECUTE insertcustomerorder 101,54564,'2024-01-25',15,1
GO 

select * from [dbo].[Order Details]

--7. write a SQL query to Create Stored procedure in the Northwind database to update
--Customer Order Details 

CREATE PROCEDURE UPDATECUSTOMERORDER
@ord_no int ,@purch_amt int 

AS 

BEGIN 
UPDATE ORDERS
SET purch_amt= @purch_amt 
WHERE ord_no=@ord_no;
end

EXECUTE UPDATECUSTOMERORDER 1,15000


--write a SQL query to Create Stored procedure in the Northwind database to retrieve
--Sales By Category

create procedure SalesByCategoryOfDifferent
as
begin
select count(o.OrderID)as dummy ,c.CategoryName from ORDERS o 
join [Order Details] q on o.OrderID = q.OrderID 
join Products p on p.ProductID=q.ProductID 
join Categories c on c.CategoryID=p.CategoryID 
group by c.CategoryName ;
end

execute SalesByCategoryOfDifferent

--write a SQL query to Create Stored procedure in the Northwind database to retrieve
--Employee Sales by Country
create procedure SalesByCountry
as
begin
select count(o.EmployeeID) as TotalProduct,sum(q.UnitPrice) as TotalPrice from [Order Details] q 
join Orders o on q.OrderID = o.OrderID 
join Employees e on e.EmployeeID = o.EmployeeID
group by o.ShipCountry
end

execute SalesByCountry

--write a SQL query to Create Stored procedure in the Northwind database to retrieve
--Sales by Year

create procedure salesbyyear
as
begin
select year(o.OrderDate),count(o.EmployeeID) as TotalProduct from [Order Details] q 
join Orders o on q.OrderID = o.OrderID 
join Employees e on e.EmployeeID = o.EmployeeID
group by year(o.OrderDate)
end

execute salesbyyear

--select * from products 
--select * from orders
--select * from Employees
--select * from [order details]

--Create a stored procedure in the Northwind database that will calculate the average
--value of Freight for a specified customer.Then, a business rule will be added that will
--be triggered before every Update and Insert command in the Orders controller,and
--will use the stored procedure to verify that the Freight does not exceed the average
--freight. If it does, a message will be displayed and the command will be cancelled