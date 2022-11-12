USE SALES_DPT;
-- TASK 1
SELECT 
    SALESPERSON_SALESID, SALESPERSON_NAME, ORDERED, AMOUNT
FROM
    SALESPEOPLES_DATA S
        INNER JOIN
    CUSTOMERS_DATA ON S.SALESPERSON_SALESID = C.C_CUSTOMERID
        INNER JOIN
    ORDERS O;
SELECT 
    O.ORDERED, O.AMOUNT
FROM
    ORDERS O
        INNER JOIN
    CUSTOMERS_DATA c ON O.ORDERED = C.C_CUSTOMERID;
     
    
    -- TASK 2
SELECT 
    C_FIRSTNAME, SALESPERSON_NAME
FROM
    customers_data c
        JOIN
    salespeoples_data s ON c.c_customerid = s.salesperson_salesid
GROUP BY salesperson_name;
SELECT 
    *
FROM
    customers_data;


   -- TASK 3 
SELECT 
    SALESPERSON_NAME, COUNT(c_customerid)
FROM
    salespeoples_data s
        JOIN
    customers_data c ON s.SALESPERSON_SALESID = c.c_customerid
GROUP BY SALESPERSON_NAME
HAVING COUNT(c_customerid) > 1;
SELECT 
    *
FROM
    salespeoples_data;
   
   
   -- TASK 4
SELECT 
    salespeoples_data.SALESPERSON_SALESID,
    salesperson_name,
    COUNT(ordered)
FROM
    salespeoples_data
        JOIN
    customers_data ON salespeoples_data.SALESPERSON_SALESID = customers_data.c_customerid
        JOIN
    orders ON customers_data.c_customerid = orders.ordered;
   
   -- TASK 5
SELECT 
    salesperson_name,
    ordered,
    salespeoples_data.SALESPERSON_SALESID
FROM
    salespeoples_data
        LEFT OUTER JOIN
    customers_data ON salespeoples_data.SALESPERSON_SALESID
        JOIN
    orders ON salespeoples_data.SALESPERSON_SALESID = orders.ordered
WHERE
    SALESPERSON_NAME = ' williams';
   
   -- TASK 7
SELECT 
    salesperson_name,
    SALESPERSON_CITY AS c_city,
    C_firstname,
    c_city
FROM
    salespeoples_data
        JOIN
    customers_data ON salespeoples_data.SALESPERSON_SALESID = customers_data.c_customerid
WHERE
    c_city = salespeoples_data.SALESPERSON_CITY;
   
   -- TASK 8
SELECT 
    ordered,
    c_firstname,
    c_city,
    salespeoples_data.SALESPERSON_CITY
FROM
    orders
        JOIN
    customers_data ON orders.ordered = customers_data.c_customerid
        JOIN
    salespeoples_data ON customers_data.c_customerid = salespeoples_data.SALESPERSON_SALESID
WHERE
    customers_data.c_city != salespeoples_data.SALESPERSON_CITY;
   
  -- task 9
SELECT 
    salespeoples_data.SALESPERSON_SALESID,
    commission_rate,
    c_firstname,
    salesperson_name
FROM
    salespeoples_data
        JOIN
    customers_data ON salespeoples_data.salesperson_salesid = customers_data.c_customerid
WHERE
    customers_data.c_city = 'san jose';
   
   -- task 10
CREATE VIEW commission_rate AS
    SELECT 
        salesperson_name, commission_rate
    FROM
        salespeoples_data
    WHERE
        commission_rate > 10;
SELECT 
    *
FROM
    commission_rate;
   
   -- task 11
SELECT 
    salesperson_name,
    salespeoples_data.salesperson_salesid,
    salespeoples_data.SALESPERSON_CITY,
    c_firstname,
    c_city
FROM
    salespeoples_data
        JOIN
    customers_data ON salespeoples_data.SALESPERSON_SALESID = customers_data.sales_id
WHERE
    salespeoples_data.SALESPERSON_CITY != customers_data.c_city;
   
 
   -- task 12
SELECT 
    salespeoples_data.salesperson_name
FROM
    salespeoples_data
        JOIN
    customers_data ON salespeoples_data.SALESPERSON_SALESID = customers_data.c_customerid
        JOIN
    orders ON customers_data.c_customerid = orders.ordered;
   

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
SELECT 
    Employee.E_ID,
    Employee.Name,
    EMPLOYEE.ADDRESS,
    Department.Dept_No,
    Department.Dept_name
FROM
    Employee
        JOIN
    Department ON Employee.E_ID = Department.E_ID;