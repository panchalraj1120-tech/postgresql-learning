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
	when 1 then 'BCA'
	when 2 then 'MCA'
	when 3 then 'B.tech'
	when 4 then 'M.tech'
	when 5 then 'BCA'
	when 6 then 'B.A'
	when 7 then 'BBA'
	when 8 then 'BCA'
	when 9 then 'B.A'
	when 10 then 'B.pharma'
	END
	where empid in (1,2,3,4,5,6,7,8,9,10);

update employee
set emp_name = 'urvi panchal'
where empid = 9;

delete from employee
where empid = 9;

select distinct department
from employee;

select emp_name , mob_no
from employee
where department = 'BCA'; 

select * from employee
where empid between 4 and 9;

select * from employee
where department = 'BCA'
or department = 'MCA';


select * from employee
where department like '%MC_%';



	select * from employee