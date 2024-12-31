create database vm;

use vm;

create table emps (employee_id int primary key, name varchar(30), dept_id int,foreign key(dept_id) references dept(dept_id));

create table dept (dept_id int primary key, dept_name varchar(30));

insert into dept (dept_id, dept_name) values
(1, 'HR'),
(2, 'IT'),
(3, 'Marketing');

insert into emps (employee_id, name, dept_id) values
(1, 'vignan', 1),
(2, 'mani', 2),
(3, 'raju', null);

select * from emps 
inner join dept on emps.dept_id = dept.dept_id;

select * from emps 
left join dept on emps.dept_id = dept.dept_id;

select * from emps 
right join dept on emps.dept_id = dept.dept_id;

select * from emps 
cross join dept;

select * from emps as a
join emps as b
on a.dept_id = b.dept_id;

use vm;




