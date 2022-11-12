use sales_dpt;

-- task 1     DEFAULT VALUES IN SALES & ORDERS
select customers_data where c_city = 'london';

-- task 2     NAMES STARTING WITH P, IN WHICH L SHOULD BE THE FOURTH LETTER
SELECT 
    salesperson_name
FROM
    salespeoples_data
WHERE
    SALESPERSON_NAME LIKE 'w__l%';

-- task 3 .....
SELECT 
    *
FROM
    salespeoples_data
WHERE
    SALESPERSON_city IN ('san jose' , 'londom', 'brazil');
    
-- task 4     A & G....
SELECT 
    *
FROM
    salespeoples_data
WHERE
    SALESPERSON_NAME LIKE 'j%'
        OR salesperson_name LIKE 'w%';
    
-- task 5     highest rating given city
SELECT 
    c_customerid,
    c_firstname,
    c_lastname,
    c_city,
    sales_id,
    c_rating
FROM
    customers_data
ORDER BY c_rating DESC;
    
-- task 6     salespeoples of barcelona or london
SELECT 
    SALESPERSON_SALESID,
    SALESPERSON_NAME,
    salesperson_city,
    COMMISSION_RATE
FROM
    salespeoples_data
WHERE
    SALESPERSON_CITY = 'barcelona'
        OR SALESPERSON_CITY = 'london';
        
-- task 7
SELECT 
    orderdate
FROM
    orders
WHERE
    '2000-07-30' AND '2020-02-01'
        AND (orderdate);

-- task 8
SELECT 
    SUM(amount)
FROM
    orders;

-- task 9     no. of non-null's in the customer table ratings
SELECT 
    c_rating
FROM
    customers_data
WHERE
    c_rating IS NOT NULL;
SELECT 
    COUNT(*) AS c_rating
FROM
    customers_data
WHERE
    c_rating IS NOT NULL;

-- task 10     list of full names of customers ....
SELECT 
    CONCAT(c_firstname, ' ', c_lastname) AS 'customers full names'
FROM
    customers_data;

-- task 11     list of all customers of 200 and 300 ratings
SELECT 
    *
FROM
    customers_data
WHERE
    c_rating BETWEEN 30 AND 90;

-- task 12     sorting customers first names
SELECT 
    c_firstname
FROM
    customers_data
ORDER BY c_firstname;

-- task 13     sorting all orders in desc order
SELECT 
    *
FROM
    orders
ORDER BY amount DESC;

-- task 14     avg amt of all orders
SELECT 
    AVG(amount)
FROM
    orders;

-- task 15     list of no. of customers from each city
SELECT 
    c_city AS 'no. of cities', COUNT(c_customerid) AS customers
FROM
    customers_data
ORDER BY c_city;

-- task 16     list of no. of customers 'FIRST NAME' of city sorted in the reverse alphabetical order
SELECT 
    c_customerid, c_lastname, REVERSE(C_FIRSTNAME)
FROM
    customers_data
ORDER BY (c_customerid);

-- task 17     orders in the month of april
SELECT 
    ordered, amount, orderdate, customerid
FROM
    orders
WHERE
    MONTHNAME(orderdate) = 'april';

-- task 18     list of top 5 orders based on the amount ('''THE "ORDER BY"  BY  DEFAULT GIVES THE DETAILS IN ASCENDING ORDER ONLY''')
SELECT 
    ordered, amount
FROM
    orders
ORDER BY amount;

-- task 19     salespeople who'll recieve higher commission
SELECT 
    salesperson_salesid,
    salesperson_name,
    (commission_rate) AS 'highest commission'
FROM
    salespeoples_data
ORDER BY COMMISSION_RATE DESC;
SELECT 
    salesperson_salesid,
    salesperson_name,
    MAX(commission_rate) AS 'highest commission'
FROM
    salespeoples_data
ORDER BY COMMISSION_RATE DESC;

-- task 20     list of 3 salespeople who'll have least commission rates
SELECT 
    salesperson_salesid,
    salesperson_name,
    (commission_rate) AS 'least commission'
FROM
    salespeoples_data
ORDER BY COMMISSION_RATE ASC
LIMIT 3;
SELECT 
    salesperson_salesid,
    salesperson_name,
    MIN(commission_rate) AS 'least commission'
FROM
    salespeoples_data
ORDER BY COMMISSION_RATE ASC
LIMIT 3;


-- END --