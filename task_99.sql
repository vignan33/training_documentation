create database team1;

use team1;

create table categories(categoryID int primary key,category_name varchar(30));

create table suppliers(supplier_id int primary key,supplier_name varchar(30));

drop table products;

create table products (
ProductID int not null, 
Product_name varchar(30),
supplier_ID int,
categoryID int,
Quantity_per_unit varchar(30),
unit_price int not null,
units_in_stock int not null,
units_on_order int, 
reorder_level varchar(30),
discontinued varchar(30),
foreign key (categoryID) references categories(categoryID),
foreign key(supplier_id) references suppliers(supplier_ID));

INSERT INTO Products 
(ProductID, Product_name, Supplier_ID, CategoryID, Quantity_per_unit, unit_price, units_in_stock, units_on_order, reorder_level, discontinued) 
VALUES
(1, 'Basmati Rice', 101, 1, '5 kg bag', 120, 50, 10, 5, 0),
(2, 'Masala Chai', 102, 2, '250 g box', 150, 40, 5, 10, 0),
(3, 'Aam Papad', 103, 3, '200 g pack', 90, 60, 15, 20, 0),
(4, 'Tandoori Masala', 104, 2, '100 g jar', 75, 30, 8, 10, 0),
(5, 'Coconut Oil', 105, 4, '1 litre bottle', 250, 20, 5, 5, 1),
(6, 'Mango Pickle', 106, 5, '500 g jar', 180, 45, 12, 8, 0),
(7, 'Paneer', 107, 6, '1 kg block', 400, 25, 6, 5, 0),
(8, 'Gujarati Khakhra', 108, 7, '300 g pack', 120, 35, 10, 10, 1),
(9, 'Papadum', 109, 8, '400 g pack', 85, 50, 15, 10, 0),
(10, 'Kesar', 110, 9, '1 g pack', 650, 10, 2, 3, 0);

drop table products;

INSERT INTO Categories
(CategoryID, Category_name)
VALUES
(1, 'Grains & Cereals'),
(2, 'Tea & Beverages'),
(3, 'Sweets & Snacks'),
(4, 'Oils & Ghee'),
(5, 'Pickles & Chutneys'),
(6, 'Dairy Products'),
(7, 'Snacks & Savories'),
(8, 'Papads & Appetizers'),
(9, 'Spices & Condiments'),
(10, 'Dry Fruits & Nuts');


INSERT INTO Suppliers 
(Supplier_ID, Supplier_name) 
VALUES
(101, 'Desi Fresh Foods'),
(102, 'Chai & Spices Co.'),
(103, 'Mango Delight Pvt. Ltd.'),
(104, 'Tandoori Spices Ltd.'),
(105, 'South Indian Oils'),
(106, 'Pickle House India'),
(107, 'Paneer Express'),
(108, 'Gujarati Snacks Hub'),
(109, 'Papadum World'),
(110, 'Saffron Exports');


-- 1.Write a mysql query to get Product name and quantity/unit.

select product_name,quantity_per_unit from products;

-- 2.Write a MySQL query to get current Product list (Product ID and name).

select productid,product_name from products where units_in_stock > 10;

-- 3.Write a MySQL query to get discontinued Product list (Product ID and name).

select productid,product_name from products where discontinued = 0;

-- 4.Write a MySQL query to get most expense and least expensive Product list (name and unit price).

select product_name,min(unit_price) from products;
select product_name,max(unit_price) from products;

select productid,product_name from products

-- 5.Write a MySQL query to get Product list (id, name, unit price) where current products cost less than 20 rupees.

select productid,product_name,unit_price from products where unit_price < 500;

-- 6.Write a MySQL query to get Product list (id, name, unit price) where products cost between $15 and 25 rupees.

select productid,product_name,unit_price from products where unit_price between 30 and 100;

-- 7.Write a MySQL query to get Product list (name, unit price) of above average price.

-- select product_name,unit_price from products where unit_price > avg(unit_price); doesn't work

select product_name,unit_price from products where unit_price > (select avg(unit_price) from products);

select avg(unit_price) from products;

-- 8.Write a MySQL query to get Product list (name, unit price) of ten most expensive products.

select product_name,unit_price from products order by unit_price desc limit 3;

-- 9.Write a MySQL query to count current and discontinued products.

select count(product_name) as current_prod ,count(product_name)as discontinue from products where discontinued = 0
or discontinued =1;

select Discontinued,COUNT(*) as ProductCount
from Products group by Discontinued;
 
 -- 10.Write a MySQL query to get Product list (name, units on order , units in stock) of stock is less than the quantity on order.
 
select product_name, units_on_order, units_in_stock from Products where units_in_stock < units_on_order;


