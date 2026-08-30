CREATE TABLE employee (
empid INT not null primary key,
emp_name varchar(100),
age INT default 18,
mob_no varchar(10)
);

insert into employee
values
(1,'raj',20,'8890795645'),
(2,'kushal',21,'9982942876'),
(3,'sujal',22,'9587427656'),
(4,'ritik',23,'9799728781'),
(5,'lakhan',21,'9928103422'),
(6,'janmanjay',22,'9943765434'),
(7,'aman',19,'8890434545'),
(8,'hardik',21,'9169874852'),
(9,'krish',20,'9166654546'),
(10,'hinansh',default,'8897989898');

alter table employee
add column department varchar(100) default null;

update employee
set department = CASE empid
	when 1 then 'IT'
	when 2 then 'HR'
	when 3 then 'IT'
	when 4 then 'FINANCE'
	when 5 then 'HR'
	when 6 then 'MARKETING'
	when 7 then 'HR'
	when 8 then 'IT'
	when 9 then 'MARKETING'
	when 10 then 'FINANCE'
	END
	where empid in (1,2,3,4,5,6,7,8,9,10);

update employee
set emp_name = 'urvi panchal'
where empid = 9;

delete from employee
where empid = 9;

select distinct department
from employee ;

select emp_name , mob_no
from employee
where department = 'HR'; 

select * from employee
where empid between 4 and 9;

select * from employee
where department = 'IT'
or department = 'HR';

select * from employee
where department like '%H_%';



select emp_name from employee

select distinct department
from employee;

select emp_name from employee
where empid >= 4;


select * from employee
where empid <= 4;

select * from employee
order by emp_name asc;

select * from employee
order by emp_name desc;

select * from employee
where department = 'FINANCE';

select * from employee
where age >= 20;

select emp_name from employee
where empid BETWEEN 1 and 6;

select * from employee
where department = 'HR'
or department = 'FINANCE';

select * from employee
order by empid
limit 4;

	
	select * from employee