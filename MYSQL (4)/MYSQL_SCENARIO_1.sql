create database if not exists wat_a_pizza;
use wat_a_pizza;
CREATE TABLE menu (
    pizza_code INT PRIMARY KEY,
    pizza_type VARCHAR(20),
    size VARCHAR(10),
    crust VARCHAR(20),
    VEG_or_NVEG VARCHAR(20),
    charges INT,
    garnishes VARCHAR(20)
);

insert into menu values(
995,'cheese','small','stuffed','VEG',229,'olives'),
(996,'chicken_bbq','medium','thick','NVEG',279,'pepper'),
(997,'supreme','large','thin','VEG',199,'cheese'),
(998,'chicken fiesta','ext_large','thick','NVEG',349,'garlic'),
(999,'margherita','small','stuffed','VEG',249,'mushroom'
);

create table orders(order_id int primary key, order_category varchar(20), pizza_code int,customer_id int);
insert into oRDers values(
499,'CASH ON DELIVERY',999,111),
(599,'HOME DELIVERY',998,119),
(699,'DINE AT DESK',999,112),
(799,'HOME DELIVERY',996,118),
(899,'CASH ON DELIVERY',995,119
);

create table customers(customer_id int primary key, city varchar(20), customer_name varchar(20));
insert into customers values(
111,'DUBAI','AMAR'),
(112,'PRAGUE','AKBAR'),
(118,'GOA','ANTHONY'),
(119,'HONGKONG','MOHAN'),
(117,'SINGAPORE','MIKE'
);

-- TASK 1
SELECT 
    *
FROM
    orders
        JOIN
    customers ON orders.customer_id = customers.customer_id;

-- TASK 2
SELECT 
    pizza_type, size, veg_or_nveg, charges
FROM
    menu;

-- TASK 3
SELECT 
    customers.customer_id, customer_name, COUNT(order_id), city
FROM
    customers
        JOIN
    orders ON customers.customer_id = orders.customer_id
GROUP BY customer_name;

-- TASK 4
SELECT 
    *
FROM
    orders;

-- TASK 5
SELECT 
    pizza_type, veg_or_nveg AS 'veg pizza or non-veg pizza'
FROM
    menu;

-- TASK 6
UPDATE menu 
SET 
    garnishes = 'cheese burst'
WHERE
    garnishes = 'cheese';
SELECT 
    *
FROM
    menu;

-- TASK 7
SELECT 
    *
FROM
    menu;

-- TASK 8
SELECT 
    customer_name, customers.customer_id, pizza_type, size
FROM
    customers
        JOIN
    orders ON customers.customer_id = orders.customer_id
        JOIN
    menu ON orders.pizza_code
WHERE
    size = 'large'; 

-- TASK 9
SELECT 
    customer_name, customers.customer_id, pizza_type, size
FROM
    customers
        JOIN
    orders ON customers.customer_id = orders.customer_id
        JOIN
    menu ON orders.pizza_code
GROUP BY garnishes;

-- TASK 10
SELECT 
    customer_name, SUM(charges) AS amount
FROM
    customers
        JOIN
    orders ON customers.customer_id = orders.customer_id
        JOIN
    menu ON orders.pizza_code = menu.pizza_code
GROUP BY customers.customer_id;

-- TASK 11
SELECT 
    COUNT(order_category), order_category
FROM
    orders
GROUP BY order_category;

-- TASK 12
alter table orders add column (offer_price double);
UPDATE orders
        JOIN
    menu ON orders.pizza_code = menu.pizza_code 
SET 
    orders.offer_price = (menu.charges - 0.1 * charges)
WHERE
    menu.size != 'large';
SELECT 
    *
FROM
    orders;
SELECT 
    *
FROM
    customers;
















































































