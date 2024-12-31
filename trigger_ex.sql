create database trigger1;

use trigger1;

show databases;

create table emp(emp_id int, emp_name varchar(30) not null,emp_age int not null,emp_desig varchar(30));

select * from emp;

create trigger age_verification 
before insert on emp
for each row
begin
if new.emp_age < 0 then set new.emp_age = 0



insert into emp values ('1','vignan','23','hr'),
('2','mani','24','jse'),
('3','raju','20','jd'),
('4','madhu','18','pd'),
('5','venu','27','trainee'),
('6','madhav','14','web designer'),
('7','bhanu','17','sd'),
('8','sai','18','admin'),
('9','vikas','16','se'),
('10','kiran','0','wd');


create trigger age 
before insert on emp
for each row
begin
if new.emp_age < 0 then set new.emp_age = 0;


