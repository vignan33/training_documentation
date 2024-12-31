create database vignan;

use  vignan;

show databases;

show tables;

create table players(player_name varchar(20),birth_year int,jersey_no int,team varchar(20),`role` varchar(30));
desc players;
insert into players (player_name,birth_year,jersey_no,team,`role`) values ('Dhoni',1981,7,'INDIA','Batsman'),
('Kohli',1988,18,'INDIA','Batsman'),
('Bravo',1983,47,'WEST INDIES','All rounder'),
('warner',1986,31,'Australia','Batsman'),
('Rabada',1995,25,'South Africa','Bowler');

select * from players;

create table employees (emp_id int,emp_name varchar(20),`role` varchar(30),city varchar(10),salary int);

select *from employees;

desc employees;


insert into employees (emp_id,emp_name,`role`,city,salary) values(1,'Mani','Devops Engineer','HYD',50000),
(2,'vignan','software Engineer','HYD',40000),
(3,'Rahul','project Engineer','DEL',70000),
(4,'Rakesh','manager','Pune',80000),
(5,'Raju','Team lead','HYD',40000),
(6,'Vinod','HR','BNG',70000),
(7,'Kapil','Admin','HYD',50000),
(8,'Sneha','Associate','CHN',35000),
(9,'Madhu','Developer','HYD',55000),
(10,'Balu','Intern','BNG',10000);

create table doctors(doctor_id int,doctor_name varchar(20),specialization varchar(20),phone_no varchar(30),email varchar(50));

show tables;

insert into doctors(doctor_id,doctor_name,specialization,phone_no,email)values
(1, 'Dr. Arjun Mehta', 'Cardiologist', '9876543210', 'arjun.mehta@healthcare.com'),
(2, 'Dr. Priya Sharma', 'Dermatologist', '8765432109', 'priya.sharma@healthcare.com'),
(3, 'Dr. Rajesh Gupta', 'Orthopedic Surgeon', '7654321098', 'rajesh.gupta@healthcare.com'),
(4, 'Dr. Nisha Menon', 'Gynecologist', '6543210987', 'nisha.menon@healthcare.com'),
(5, 'Dr. Vikram Desai', 'Neurologist', '5432109876', 'vikram.desai@healthcare.com'),
(6, 'Dr. Ritu Verma', 'Pediatrician', '4321098765', 'ritu.verma@healthcare.com'),
(7, 'Dr. Manoj Kumar', 'Oncologist', '3210987654', 'manoj.kumar@healthcare.com'),
(8, 'Dr. Sunita Patel', 'Endocrinologist', '2109876543', 'sunita.patel@healthcare.com'),
(9, 'Dr. Aakash Yadav', 'General Surgeon', '1098765432', 'aakash.yadav@healthcare.com'),
(10, 'Dr. Meera Rao', 'Psychiatrist', '1987654321', 'meera.rao@healthcare.com');

select * from doctors;

create table subscribers(user_id int, user_name varchar(30),email varchar(30),plan varchar(20),plan_status varchar(30));

insert into subscribers(user_id,user_name,email,plan,plan_status) values
(1, 'Ravi Sharma', 'ravi.sharma@subscription.com', 'Premium', 'Active'),
(2, 'Anita Desai', 'anita.desai@subscription.com', 'Basic', 'Expired'),
(3, 'Vikram Yadav', 'vikram.yadav@subscription.com', 'Standard', 'Active'),
(4, 'Neha Gupta', 'neha.gupta@subscription.com', 'Premium', 'Active'),
(5, 'Arjun Patel', 'arjun.patel@subscription.com', 'Basic', 'Pending'),
(6, 'Sonia Verma', 'sonia.verma@subscription.com', 'Standard', 'Active'),
(7, 'Manoj Kumar', 'manoj.kumar@subscription.com', 'Premium', 'Active'),
(8, 'Priya Singh', 'priya.singh@subscription.com', 'Basic', 'Canceled'),
(9, 'Amit Joshi', 'amit.joshi@subscription.com', 'Standard', 'Active'),
(10, 'Ritu Mehta', 'ritu.mehta@subscription.com', 'Premium', 'Expired');

show tables;

select * from subscribers;

create table accounts (
account_id int,customer_id int,account_type varchar(20),balance int,created_at varchar(30));

insert into accounts (account_id, customer_id, account_type, balance, created_at)
values
(101, 201, 'Savings', 50000.00, '2023-01-15'),
(102, 202, 'Current', 150000.50, '2023-02-20'),
(103, 203, 'Savings', 23000.75, '2023-03-05'),
(104, 204, 'Fixed Deposit', 1000000.00, '2023-04-25'),
(105, 205, 'Savings', 80000.25, '2023-05-30'),
(106, 206, 'Current', 120000.00, '2023-06-18'),
(107, 207, 'Savings', 35000.50, '2023-07-12'),
(108, 208, 'Current', 250000.75, '2023-08-01'),
(109, 209, 'Savings', 95000.00, '2023-09-23'),
(110, 210, 'Fixed Deposit', 500000.00, '2023-10-10');

select * from doctors;

select * from accounts;

select * from employees;

select * from players;

select * from subscribers;




create table prac(id int, name varchar(30),age int);

select * from prac;

insert into prac(id,name,age) values(1,'vignan',22),
(2,'mani',34),
(2,'raju',21);

alter table prac add email varchar(50);

truncate table prac;

drop table prac;
---------------
update prac set age = 59 where id = 1;

set sql_safe_updates = 0;

set sql_safe_updates = 1;

update prac set email = 'vignan@123' where id =1;

alter table prac drop column email;

delete from prac where id =1;

update prac set id = 3 where age = 21;







