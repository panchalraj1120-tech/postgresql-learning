create table employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
age INT check(age >= 18),
department VARCHAR(50),
salary INT,
city VARCHAR(50),
joining_date DATE,
joining_time TIME,
email VARCHAR(100) UNIQUE
);

insert into employees
values
(1,'raj',20,'Finance',20000,'Pune','2026-12-04','09:30:00','raj123@gmail.com'),
(2,'sujal',23,'HR',405000,'Ahmedabad','2023-02-10','03:45:00','sujal8890@gmail.com'),
(3,'ritik',25,'Finance',24000,'Mumbai','2020-10-14','10:00:00','ritik232@gmail.com'),
(4,'kushal',21,'IT',22000,'Pune','2025-03-22','03:56:34','kushal9900@gmail.com'),
(5,'yashraj',22,'Data Analytics',50000,'Ahmedabad','2023-10-09','09:30:00','yashraj232@gmail.com'),
(6,'hardik',28,'Data Analytics',70000,'Pune','2022-09-15','10:30:00','hardik1122@gmail.com'),
(7,'sujalkalal',25,'IT',55000,'Banglore','2024-06-04','10:45:00','sujalkalal454@gmail.com'),
(8,'lalit',34,'HR',90000,'Mumbai','2018-12-07','10:09:00','lalit23@gmail.com'),
(9,'tanvi',18,'HR',15000,'Banglore','2026-6-04','09:50:00','tanvi8875@gmail.com'),
(10,'urvi',19,'Finance',60000,'Pune','2025-08-03','10:42:00','urvi8890@gmail.com');


--filtering for employee from Pune.(using SELECT, FROM, WHERE clause)
select * from employees
where city = 'Pune';


--employee from Pune and salary greater than 50,000.(using = 'AND'operator)
select * from employees
where city = 'Pune' and salary >= 50000;


--filtering employee whose department = IT,HR,Finance.(using IN clause)
select * from employees
where department in ('IT', 'HR', 'Finance');


--filtering employees whose salary between 40000 to 65000.(using BETWEEN clause)
select * from employees
where salary between 40000 and 65000;

--name whose name start with 'r'.(using LIKE clause)
select * from employees
where employee_name like 'r%';

--all employees unique city and sort(ORDER BY and DISTINCT)
select distinct city
from employees
order by city asc;

--add a salary category by using CASE WHEN clause
select salary,
case
	when salary >= 60000 then 'HIGH'
	when salary >= 45000 then 'MEDIUM'
	else
	'LOW'
	end as salary_category
	from employees;

	
--joined after '2023-01-01'.
select * from employees
where joining_date > '2023-01-01';


--date extraction
select * from employees
where to_char(joining_date , 'YYYY-MM') = '2023-01';


--employees whose salary greater than 50000
select * from employees
where salary >= 50000;

--employees from pune and mumbai 
select * from employees
where city = 'Pune'
or city = 'Mumbai';

--employees whose salary is between 40000 and 70000
select * from employees
where salary between 40000 and 70000;

--employees whose name start with 'S'
select * from employees
where employee_name like 's%';

--employees whse age is greater than 25 and salary is greater than 45000
select * from employees
where age >= 25
and salary >= 45000;

--5 highest paid employees
select * from employees
order by salary desc
limit 5;

--3 lowest paid employee
select * from employees
order by salary 
limit 3;

--3 different salaries
select distinct salary
from employees
order by salary desc
limit 3;

--total salary paid to all employees
select sum(salary) from employees

--average employee salary
select avg(salary) from employees

--update salary 405000 to 45000
update employees
set salary = 45000
where salary = 405000;


--highest salary
select max(salary) from employees

--lowest salary
select min(salary) from employees

--count the total number of employees
select count(employee_id) from employees

--count employees in each department
select department,
count(employee_id) from employees
group by department;

--average salary of each department
select department,
round(avg(salary),2) from employees
group by department;

--maximum salary in each department
select department,
max(salary)from employees
group by department;

--minimum salary in each department
select department,
min(salary) from employees
group by department;

--total salary paid by each department
select department,
sum(salary) from employees
group by department;

--department having more than two employees
select department
from employees
group by department
having count(*) > 2;

--department whose average salary more than 50000
select department,
round(avg(salary),2) as avg_salary
from employees
group by department
having avg(salary) > 50000;


--salary category using CASE WHEN
select salary,
case
when salary >= 60000 then 'HIGH'
when salary >= 45000 then 'MEDIUM'
else
'LOW'
end as salary_category
from employees;


--categorized by age
select age,
case
when age >= 18 and age <= 25 then 'YOUNG'
when age >= 26 and age <= 31 then 'ADULT'
when age >= 32 then 'SENIOR'

end as
AGE_CATEGORY
from employees;

--employees who joined after 2024-01-01
select * from employees
where joining_date > '2024-01-01';

--extract year from joining date
select * from employees
where extract(year from joining_date) = 2023;

--select current date
select current_date;

--select current time
select current_time;

--all joining dates
select joining_date from employees;

--between 2024-01-01 to 2025-01-01
select joining_date from employees
where joining_date between '2024-01-01' and '2025-01-01';


--number of days between two dates
select '2026-06-01'::date - '2025-10-01'::date as days_difference;

--city has the most employee
select city,
count(*) as highest_employees
from employees
group by city
order by highest_employees desc
limit 1;


--top 5 highest paid employees name and salary
select employee_name ,salary
from employees
order by salary desc
limit 5;

--department has highest avg salary
select department,
round(avg(salary),2) as average_salary from employees
group by department
order by average_salary desc
limit 1;


--total salary expenditure 
select department,
sum(salary) as total_salary
from employees
group by department
order by total_salary desc;





select * from employees