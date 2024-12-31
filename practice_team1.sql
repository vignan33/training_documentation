create database prac;

use prac;

create table categories (category_id int primary key,category_name varchar(30));

select * from categories;

create table suppliers (supplier_id int primary key,supplier_name varchar(30));

select * from suppliers;

create table products (Product_id int,
Product_name varchar(30) primary key,
supplier_id int,
category_id int,
quantity_per_unit varchar(30),
unit_price int,
units_in_stock int,
units_on_order int,
reorder_level varchar(30),
discontinued int,
foreign key(supplier_id)references suppliers(supplier_id),
foreign key(category_id)references categories(category_id)
);

select * from products;

insert into Categories (category_id, category_name) values
(1, 'Electronics'),
(2, 'Furniture'),
(3, 'Kitchenware'),
(4, 'Clothing'),
(5, 'Footwear'),
(6, 'Books'),
(7, 'Toys'),
(8, 'Groceries'),
(9, 'Jewellery'),
(10, 'Beauty Products');

insert into Suppliers (supplier_id, supplier_name) values
(1, 'Tata Electronics'),
(2, 'Ikea Furniture'),
(3, 'Bajaj'),
(4, 'Raymond'),
(5, 'Bata'),
(6, 'Penguin Books'),
(7, 'school Toys'),
(8, 'Big Bazaar'),
(9, 'Malabar Jewellery'),
(10, 'Sugar');


insert into Products 
(product_id, product_name, supplier_id, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, reorder_level, discontinued) 
values (1, 'LED TV', 1, 1, '1 unit', 30000, 50, 10, 5, 0),
(2, 'Smartphone', 1, 1, '1 unit', 20000, 100, 25, 10, 0),
(3, 'Washing Machine', 1, 1, '1 unit', 25000, 15, 5, 2, 0),
(4, 'Microwave Oven', 1, 1, '1 unit', 12000, 30, 10, 5, 0),
(5, 'Sofa Set', 2, 2, '1 set', 45000, 20, 5, 2, 0),
(6, 'Dining Table', 2, 2, '1 set', 25000, 10, 2, 2, 0),
(7, 'Chair', 2, 2, '1 unit', 1500, 100, 0, 10, 0),
(8, 'Wardrobe', 2, 2, '1 unit', 30000, 5, 0, 3, 0),
(9, 'Pressure Cooker', 3, 3, '1 unit', 1500, 0, 50, 10, 0),
(10, 'Nonstick Pan', 3, 3, '1 unit', 2000, 50, 10, 5, 0),
(11, 'Cotton Shirt', 4, 4, '1 piece', 1200, 100, 20, 15, 0),
(12, 'Denim Jeans', 4, 4, '1 piece', 2000, 50, 15, 10, 0),
(13, 'Leather Shoes', 5, 5, '1 pair', 4500, 15, 5, 3, 1),
(14, 'Sports Shoes', 5, 5, '1 pair', 5000, 25, 0, 5, 0),
(15, 'Story Book', 6, 6, '1 book', 300, 200, 0, 10, 0),
(16, 'Textbook', 6, 6, '1 book', 800, 150, 0, 5, 0),
(17, 'Toy Car', 7, 7, '1 unit', 800, 5, 50, 5, 0),
(18, 'Doll', 7, 7, '1 unit', 1200, 10, 15, 3, 0),
(19, 'Gold Necklace', 9, 9, '1 piece', 150000, 2, 0, 1, 0),
(20, 'Diamond Ring', 9, 9, '1 piece', 250000, 1, 0, 1, 0);

-- 1.Write a mysql query to get Product name and quantity/unit.

select product_name,quantity_per_unit from products;

-- 2.Write a MySQL query to get current Product list (Product ID and name).

select product_id,product_name from products where discontinued = 0 order by product_id;

-- 3.Write a MySQL query to get discontinued Product list (Product ID and name).

select product_id,product_name from products where discontinued = 1;

-- 4.Write a MySQL query to get most expense and least expensive Product list (name and unit price).

select max(unit_price) as max_price from products union
select min(unit_price) as min_price from products ;

select product_name,unit_price 
from products where unit_price = (select max(unit_price) from products)
or
unit_price = (select min(unit_price) from products);

-- 5.Write a MySQL query to get Product list (id, name, unit price) where current products cost less than 20000 rupees.

select product_id,product_name,unit_price from products where unit_price < 20000 and discontinued = 0 order by product_id;

-- 6.Write a MySQL query to get Product list (id, name, unit price) where products cost between 1000 and 5000 rupees.

select product_id,product_name,unit_price from products where unit_price between 100000 and 500000;

-- 7.Write a MySQL query to get Product list (name, unit price) of above average price.

select product_name,unit_price from products where unit_price > (select avg(unit_price) from products);

-- 8.Write a MySQL query to get Product list (name, unit price) of ten most expensive products.

select product_name,unit_price from products order by unit_price desc limit 10;

-- 9.Write a MySQL query to count current and discontinued products.

select Discontinued,COUNT(*) as ProductCount
from Products group by Discontinued;

-- 10.Write a MySQL query to get Product list (name, units on order , units in stock) of stock is less than the quantity on order.

select product_name,units_on_order,units_in_stock from products where units_in_stock < units_on_order;

-- 

select product_id from products order by product_id asc;


employees



use vm;

show tables;

select * from emps;

select * from dept;

select * from emps inner join
dept on emps.dept_id = dept.dept_id;









