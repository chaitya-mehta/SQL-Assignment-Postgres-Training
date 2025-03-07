create table Department 
(
dept_id int primary key identity(1,1) ,
dept_name varchar(50)
);

create taBLE Employee
(
emp_id int primary key identity(1,1),
dept_id int,
mngr_id int,
emp_name varchar(50),
salary int,
foreign key(dept_id) references department(dept_id)
);

set identity_insert department on 

set identity_insert department off

set identity_insert employee on

select * from employee ORDER BY dept_id
select * from department
--write a SQL query to find Employees who have the biggest salary in their Department

select d.dept_name, MAX(e.salary) from employee e inner join Department d on e.dept_id=d.dept_id group by d.dept_name ;

--write a SQL query to find Departments that have less than 3 people in it 
select d.dept_id , count(E.emp_id) from Employee e inner join department d on e.dept_id = d.dept_id group by d.dept_id having count(e.emp_id)<3;
select * from employee ORDER BY dept_id
select * from department

--write a SQL query to find All Department along with the number of people there
select d.dept_name ,count(e.emp_id) from Department d left join employee e on e.dept_id =d.dept_id group by d.dept_name;

---write a SQL query to find All Department along with the total salary there

select d.dept_name ,d.dept_id, sum(e.salary) from Department d left join Employee e on e.dept_id=d.dept_id group by d.dept_name,d.dept_id;