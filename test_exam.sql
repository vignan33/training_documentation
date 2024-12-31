Create database MYPROJECTS;

Use MYPROJECTS;

Create table employee1 (emp_id int auto_increment primary key, emp_fn varchar(50), emp_ln varchar(50), salary int);

select * from employee1;

Insert into employee1 (emp_fn, emp_ln, salary) values ('raju', 'kumar', 10000),
('Rahul', 'Yadav',20000),
('vikas', 'kumar' ,40000),
('abinav', 'kumar',15000),
('Mahesh', 'babu',80000),
('ravi','teja',12000),
('surya','kumar',4000),
('mani','singh',35000),
('venu','madhav',55000),
('Sudheer', 'babu', 25000);

-- Retrieve the names and salaries of employees whose salary is greater than 50000. 

select emp_fn,emp_ln,salary from employee1 where salary > 50000;

-- Retrieve the first and last names of employees whose salary is between 40000 and 60000. 

select emp_fn,emp_ln,salary from employee1 where salary > 40000 and salary <60000;

-- Retrieve the first and last names of employees whose salary is not equal to 55000. 

select emp_fn,emp_ln,salary from employee1 where salary != 55000;

-- Retrieve the first and last names of all employees, ordered by their salary in descending order. 

select emp_fn,emp_ln,salary from employee1 order by salary desc;

-- Retrieve the first and last names of employees whose salary is either less than 45000 or greater than 60000. 

select emp_fn,emp_ln,salary from employee1 where salary < 45000 or salary > 60000;

