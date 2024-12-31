create database mani;

use mani;
---------------------------------------------------------------------------------
-- TASK 2:
-- You are working with a database that stores information about students and their courses. There are three tables: students, courses, and enrollments. 
-- Write a SQL query to display the names of students along with the courses they have enrolled in.

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students (student_id, student_name) 
VALUES 
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

INSERT INTO courses (course_id, course_name) 
VALUES 
(101, 'Math'),
(102, 'Science'),
(103, 'History');

INSERT INTO enrollments (student_id, course_id) 
VALUES 
(1, 101),
(1, 102),
(2, 103),
(3, 101);

select * from students;

select * from courses;

select * from enrollments;

select students.student_name,courses.course_name from students 
join enrollments on students.student_id = enrollments.student_id
join courses on enrollments.course_id = courses.course_id;
------------------------------------------------------------------------
-- task 3
-- You need to retrieve data from a database that tracks product sales. There are tables for products, sales, and customers. 
-- Write a SQL query to show the total sales amount for each product category.

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 800),
(2, 'Phone', 'Electronics', 600),
(3, 'T-Shirt', 'Clothing', 25),
(4, 'Jeans', 'Clothing', 40),
(5, 'Microwave', 'Appliances', 120);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    sale_amount DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO sales (sale_id, product_id, quantity, sale_amount) VALUES
(101, 1, 2, 1600),
(102, 2, 3, 1800),
(103, 3, 10, 250),
(104, 4, 5, 200),
(105, 1, 1, 800);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO customers (customer_id, customer_name, email) VALUES
(1, 'John Doe', 'john@example.com'),
(2, 'Jane Smith', 'jane@example.com');

update customers set customer_name = 'vignan' where customer_id = 1;

select * from products;

select * from sales;

select * from customers;

select products.category, sum(sales.quantity*products.price) as total_sales from products
 left join sales on products.product_id = sales.product_id
group by products.category;
------------------------------------------------------------------------------------------------------------------------------------------
-- task 4
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);

INSERT INTO employees (employee_id, employee_name, manager_id) VALUES
(1, 'Raju', NULL),   
(2, 'Madhav', 1),     
(3, 'Bobby', 1),       
(4, 'Rahul', 2);     

select * from employees;

select e.employee_name as employee,
m.employee_name as manager
from employees e 
left join employees m on e.manager_id = m.employee_id;

------------------------------------------------------------------------------------------------------------------------------------------
-- task 5
-- You are managing a database for an online store. 
-- Write a query to retrieve the top 10 bestselling products based on the total number of units sold.

CREATE TABLE sales1 (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    quantity_sold INT NOT NULL
);

INSERT INTO sales1 (product_id, quantity_sold) VALUES
(101, 5),
(102, 3),
(103, 10),
(101, 2),
(104, 4),
(105, 6),
(106, 8),
(107, 1),
(108, 7),
(109, 12),
(110, 9),
(111, 4),
(102, 5),
(103, 3);

select * from sales1;

SELECT product_id, 
       SUM(quantity_sold) AS total_units_sold
FROM sales1
GROUP BY product_id
ORDER BY total_units_sold DESC
LIMIT 10;
-----------------------------------------------------------------------------
-- task 6
-- You have tables for students, courses, and grades. 
-- Write a SQL query to display the average grade for each student.

CREATE TABLE students1 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100)
);

INSERT INTO students1 (student_id, student_name) VALUES
(1, 'Raju'),
(2, 'Venu'),
(3, 'Balu');

INSERT INTO grades (student_id, course_id, grade) VALUES
(1, 101, 85.0),
(1, 102, 92.0),
(1, 103, 88.0),
(2, 101, 78.0),
(2, 102, 80.0),
(3, 101, 95.0),
(3, 103, 89.0);

CREATE TABLE grades (
    grade_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    grade DECIMAL(5, 2),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

select * from students1;

select * from grades;

SELECT s.student_name, AVG(g.grade) AS average_grade
FROM students s
JOIN grades g ON s.student_id = g.student_id
GROUP BY s.student_name;


SELECT student_id, AVG(grade) AS average_grade
FROM grades
GROUP BY student_id;
-----------------------------------------------------------------------------------------------------
-- task 11
-- In a database storing movie information, 
-- Write a query to show the top 5 highest-rated movies by users.

CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

CREATE TABLE ratings (
    rating_id INT PRIMARY KEY,
    movie_id INT,
    user_id INT,
    rating DECIMAL(3, 1) CHECK (rating >= 0 AND rating <= 5),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

INSERT INTO movies (movie_id, title) VALUES
(1, 'Movie A'),
(2, 'Movie B'),
(3, 'Movie C'),
(4, 'Movie D'),
(5, 'Movie E'),
(6, 'Movie F');

INSERT INTO ratings (rating_id, movie_id, user_id, rating) VALUES
(1, 1, 101, 4.5),
(2, 2, 102, 3.8),
(3, 3, 103, 4.9),
(4, 1, 104, 4.0),
(5, 4, 105, 5.0),
(6, 5, 106, 3.5),
(7, 6, 107, 4.7);

select * from movies;

select * from ratings;

select title, avg(rating) from movies join ratings 
on movies.movie_id = ratings.movie_id
group by movie_id
order by rating desc limit 5;

SELECT m.title, AVG(r.rating) AS average_rating
FROM movies m
JOIN ratings r ON m.movie_id = r.movie_id
GROUP BY m.movie_id
ORDER BY average_rating DESC
LIMIT 5;

---------------------------------------------------------

-- task 12
-- You have tables for invoices and payments. 
-- Write a query to show the unpaid invoices and their total amount

---------------------------------------------------------

-- Task-10:
-- You have tables for customers1 and orders1. 
-- Write a query to show the average order value for each customer.

CREATE TABLE customers1 (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

CREATE TABLE orders1 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_value DECIMAL(10, 2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers1 (customer_id, customer_name)
VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

INSERT INTO orders1 (order_id, customer_id, order_value, order_date)
VALUES
(101, 1, 250.50, '2024-11-01'),
(102, 1, 120.75, '2024-11-05'),
(103, 2, 300.00, '2024-11-06'),
(104, 2, 150.25, '2024-11-07'),
(105, 3, 500.00, '2024-11-08');

----------------------------------------------------------------------------------------------------
-- Task-9:
-- You need to retrieve data from a database tracking product inventory. 
-- Write a query to display products with low stock (less than 10 units).

create table products1(product_id int ,product_name varchar(50),quantity int);

insert into products1 (product_id, product_name,quantity) values
(1, 'basmati rice', 50),
(2, 'dal', 8),
(3, 'atta', 5),
(4, 'turmeric powder', 20),
(5, 'seeds', 15),
(6, 'garam masala', 9),
(7, 'oil', 12),
(8, 'coconut', 2),
(9, 'salt', 6),
(10, 'groundnuts', 0);

select * from products1;

select * from products1
where quantity < 10;

-----------------------------------------------------

-- task 7

create table users(user_id int,user_name varchar(20));


create table friends1(user_id int,count int);

insert into users (user_id, user_name) values
(1, 'Ravi'),
(2, 'Sita'),
(3, 'Kiran'),
(4, 'Priya'),
(5, 'Arjun');

insert into friends1 (user_id,count) values
(1, 10),
(2, 15),
(3, 12),
(4, 15),
(5, 9);

select * from users;


select user_name from users 
join friends on users.user_id = friends.user_id
order by count desc limit 3;



create table invoices (
    invoice_id int,
    customer_id int,
    amount_due int,
    date_issued varchar(30),
    date_due varchar(30)
);

insert into invoices (invoice_id, customer_id, amount_due, date_issued, date_due) values
(1, 101, 500, '2024-01-01', '2024-01-15'),
(2, 102, 300, '2024-01-02', '2024-01-16'),
(3, 103, 200, '2024-01-03', '2024-01-17'),
(4, 104, 600, '2024-01-04', '2024-01-18');


create table payments (
    payment_id int,
    invoice_id int,
    payment_date varchar(30),
    amount_paid int
);

INSERT INTO payments (payment_id, invoice_id, payment_date, amount_paid) VALUES
(1, 1, '2024-01-10', 200),
(2, 2, '2024-01-05', 300),
(3, 3, '2024-01-06', 150);

select * from invoices where invoice_id not in (select invoice_id from payments);

select i.invoice_id,i.customer_id,(i.amount_due-p.amount_paid) due_amount from invoices i 
left join payments p on i.invoice_id = p.invoice_id;











