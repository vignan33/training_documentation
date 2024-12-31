create database index1;

use index1;

create table emps(emp_id int auto_increment primary key, emp_name varchar(30),emp_age int);

insert into  emps (emp_name,emp_age) values ('vignan',24),
('raju',13),
('ravi',28),
('vinod',20),
('krishna',45),
('naveen',18),
('pavan',17),
('sai',4);

select * from emps;

select * from emps where emp_age >= 18;







