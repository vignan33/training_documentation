create database triggers;

use triggers;

show tables;

-- before insert trigger

create table customers1 (cust_id int,age int,name varchar(30)); 

delimiter //
create trigger age_verify 
before insert on customers1 
for each row 
if new.age < 0 then set new.age = 0;
end if; //

insert into customers1 values(101,23,'vignan'),
(102,-1,'mani'),
(103,-12,'raju'),
(104,8,'naresh');

select * from customers1;

-- -----------------------------after insert trigger-------------------------------

create table customers2 (id int auto_increment primary key,name varchar(30) not null,email varchar(30),birthdate date);

create table msgs(id int auto_increment,msg_id int,msg varchar(300) not null,
primary key(id,msg_id));


delimiter //
create trigger 
check_null_dob 
after insert 
on customers2 
for each row 
begin
if new.birthdate is null then 
insert into msgs(id,msg) values(new.id,concat('hi',new.name,', pls update your dob'));
end if; 
end //
delimiter ;

insert into customers2(name,email,birthdate) values('vignan','vignan@abc.com',null),
('ravi','ravi@123.com','2001-11-25'),
('madhu','madhu@pqr.com','1999-08-20'),
('venu','venu@abc.com',null);

ALTER TABLE msgs MODIFY msg_id INT DEFAULT 0;

select * from customers2;

select * from msgs;

-- -------------------------before update trigger------------------------

create table emps(emp_id int primary key,emp_name varchar(30),emp_age int,salary float);

insert into emps (emp_id,emp_name,emp_age,salary) values (1,'vignan',23,500000),
(2,'mani',26,30000),
(3,'venu',22,10000),
(4,'nani',18,50000),
(5,'vishal',35,70000),
(6,'bhargav',24,20000),
(7,'suraj',20,30000),
(8,'bhaskar',21,90000),
(9,'lucky',22,60000),
(10,'naveen',24,50000);


delimiter //
create trigger upd_trigger
before update 
on emps
for each row
begin
if new.salary = 50000 then set new.salary = 95000;
elseif new.salary < 40000 then set new.salary = 99999;
end if;
end //

update emps set salary = 3000;

set sql_safe_updates =0;

select * from emps;

-- ----------------before delete trigger----------------------










