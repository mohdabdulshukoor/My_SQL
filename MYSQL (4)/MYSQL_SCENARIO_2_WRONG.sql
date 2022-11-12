use sales_dpt;

-- task 1 
CREATE VIEW name AS
    SELECT 
        salesperson_name AS s_name, c_city, ordered
    FROM
        salespeoples_data AS s
            JOIN
        customers_data AS c ON s.SALESPERSON_SALESID = c.sales_id
            JOIN
        orders AS o ON c.c_customerid = o.ordered;
SELECT 
    *
FROM
    name;

SELECT 
    salesperson_name AS s_name, c_city, ordered
FROM
    salespeoples_data AS s
        JOIN
    customers_data AS c ON s.SALESPERSON_SALESID = c.sales_id
        JOIN
    orders AS o ON c.c_customerid = o.CUSTOMERID;
    
 -- task 2
CREATE VIEW total_customers AS
    SELECT 
        c_customerid, c_firstname, salesperson_name
    FROM
        customers_data c
            JOIN
        salespeoples_data s ON c.sales_id = s.SALESPERSON_SALESID
    GROUP BY salesperson_name;
SELECT 
    *
FROM
    total_customers;
 
 -- task 3
CREATE VIEW sales_guys_name AS
    SELECT 
        SALESPERSON_NAME AS 'holding no. of customers',
        COUNT(c_customerid)
    FROM
        salespeoples_data
            JOIN
        customers_data c ON s.sales_id = s.sales_id
    GROUP BY salesperson_name
    HAVING COUNT(c_customerid) >= 1;
SELECT 
    *
FROM
    sales_guys_name;
 
-- task 4
SELECT 
    salespeoples_data.SALESPERSON_SALESID,
    salesperson_name,
    COUNT(ordered)
FROM
    salespeoples_data
        JOIN
    customers_data ON salespeoples_data.SALESPERSON_SALESID = customers_data.sales_id
        JOIN
    orders ON customers_data.c_customerid = orders.CUSTOMERID
GROUP BY salespeoples_data.SALESPERSON_SALESID;
 
-- task 5
SELECT 
    salesperson_name,
    ordered,
    salespeoples_data.SALESPERSON_SALESID
FROM
    salespeoples_data
        LEFT OUTER JOIN
    customers_data ON salespeoples_data.salesperson_salesid = customers_data.c_customerid
        JOIN
    orders ON customers_data.c_customerid = orders.customerid
WHERE
    SALESPERSON_NAME = 'james';
    
 -- task 7
SELECT 
    salesperson_name, salesperson_city AS c_city, c_firstname
FROM
    salespeoples_data
        JOIN
    customers_data ON salespeoples_data.SALESPERSON_SALESID = customers_data.c_customerid
WHERE
    c_city = salespeoples_data.SALESPERSON_CITY;
 
 -- task 8
 select ordered, c_firstname, c_city as "city of customer" , salespeoples_data.SALESPERSON_CITY as "city of salesperson" 
 from orders join customers_data on orders.ORDERED = customers_data.c_customerid
 join salespeoples_data on customers_data.c_customerid = salespeoples_data.SALESPERSON_SALESID where customers_data.c_city !=
 salespeoples_data.SALESPERSON_CITY;
 
 -- task 9
SELECT 
    salespeoples_data.SALESPERSON_SALESID,
    commission_rate,
    c_firstname,
    salesperson_name
FROM
    salespeoples_data
        JOIN
    customers_data ON salespeoples_data.SALESPERSON_SALESID = customers_data.c_customerid
WHERE
    customers_data.c_city = 'london';
 
 -- task 10 
 CREATE VIEW sales_commission_rate AS
    SELECT 
        salesperson_name, commission_rate
    FROM
        salespeoples_data
    WHERE
        commission_rate > 12;
SELECT 
    *
FROM
    commission_rate;
 
 -- task 11
 SELECT 
    salesperson_name,
    salespeoples_data.SALESPERSON_SALESID,
    salespeoples_data.SALESPERSON_CITY,
    c_firstname,
    c_city
FROM
    salespeoples_data
        JOIN
    customers_data ON salespeoples_data.SALESPERSON_SALESID = customers_data.c_customerid
WHERE
    NOT salespeoples_data.SALESPERSON_CITY = customers_data.c_city;
 
 -- task 12
SELECT 
    salespeoples_data.SALESPERSON_name, orderdate
FROM
    salespeoples_data
        JOIN
    customers_data ON salespeoples_data.SALESPERSON_SALESID = customers_data.sales_id
        JOIN
    orders ON customers_data.c_customerid = orders.CUSTOMERID
WHERE
    NOT orders.orderdate BETWEEN '2020-03-10' AND '2020-05-10';

-- task 13
SELECT 
    salesperson_name,
    salespeoples_data.SALESPERSON_SALESID,
    COUNT(ordered)
FROM
    salespeoples_data
        JOIN
    customers_data ON salespeoples_data.SALESPERSON_SALESID = customers_data.c_customerid
        JOIN
    orders ON customers_data.c_customerid = orders.CUSTOMERID
GROUP BY salespeoples_data.SALESPERSON_SALESID;

-- task 14
SELECT 
    SUM(amount), salesperson_name
FROM
    orders
        JOIN
    customers_data ON orders.CUSTOMERID = customers_data.c_customerid
        JOIN
    salespeoples_data ON customers_data.c_customerid = salespeoples_data.SALESPERSON_SALESID
GROUP BY orderdate
ORDER BY SUM(amount) DESC;

-- task 15
create view full_name_of_customers as select concat(upper(customers_data.c_firstname),'',upper(customers_data.c_lastname)) from customers_data;
SELECT 
    *
FROM
    full_name_of_customers;










 