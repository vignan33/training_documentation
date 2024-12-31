use vm;


create table man (id int,name varchar(30),primary key(id,name));

insert into man values (1,'vignan'),
(2,'mani');

select * from man;

create table man1 (id int,name varchar(30),foreign key(id) references man (id));

create table man2 as select id from man;

select * from man2;

alter table man
modify id varchar(255);

desc man;

alter table man
drop primary key;

alter table man
add primary key(id);


alter table man
add primary key(name);


create table man5(id int,name varchar(30),constraint pk_man5 primary key(id,name));

desc man5;

---------------------------------------------------------------

create table emp(name varchar(30) not null,designation varchar(30) not null,working_date date,working_hours int);

insert into emp values ('vignan','JSE','2024-01-23',9),
('mani','HR','2024-01-23',8),
('raju','Admin','2024-01-23',7),
('ravi','Trainee','2024-01-23',8),
('madhu','tester','2024-01-23',9);


select *from emp;

alter table emp
add column login time;

desc emp;

create table trigger1



