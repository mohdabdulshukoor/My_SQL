create database if not exists WORLD;
USE WORLD;
CREATE TABLE Employee(  
    E_ID int,  
    Name VARCHAR(55),  
    Address VARCHAR(55)  
);

CREATE TABLE Department(  
    Dept_No varchar(20),  
    Dept_name VARCHAR(55),  
    E_ID VARCHAR(55)  
);

INSERT INTO Employee(E_ID, Name, Address)  
VALUES (1,'John','Newyork'),
(2, 'Michael', 'Texas'),
(3, 'San', 'Indiana'),
(4, 'James', 'Maryland'),
(5, 'Liam', 'Texas');

    
INSERT INTO Department(Dept_No, Dept_Name, E_ID)  
VALUES('D1','HR',1),
('D2', 'IT', 2),
('D3', 'MRKT',4),
('D4', 'Finance', 5),
('D5', 'Admin', 6);


-- USING INNER JOIN (READ ALL DATA AND THEN FINDS THE MATCHING AND THEN GIVES OUTPUT)
SELECT 
    Employee.E_ID,
    Employee.Name,
    Department.Dept_No,
    Department.Dept_name
FROM
    Employee
        INNER JOIN
    Department ON Employee.E_ID = Department.E_ID;
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

-- USING JOIN WHICH IS SAME TO INNER JOIN(READ ALL DATA AND THEN FINDS THE MATCHING AND THEN GIVES OUTPUT)
SELECT 
    *
FROM
    Employee
        JOIN
    Department ON Employee.E_ID = Department.E_ID;

-- """(((INNER JOIN AND JOIN ARE THE SAME AND A BIT SLOW COMPARED TO STRAIGHT JOIN REGARDING HUGE DATA)))"""

SELECT 
    *
FROM
    Employee
        STRAIGHT_JOIN
    Department ON Employee.E_ID = Department.E_ID;

-- LEFT OUTER JOIN (EXECUTES FULL LEFT SIDE TABLE AND GIVES NULL WHICH DOESNT MATCH ON THE RIGHT SIDE)
SELECT 
    Employee.E_ID,
    Employee.Name,
    Department.Dept_No,
    Department.Dept_name
FROM
    Employee
        LEFT OUTER JOIN
    department ON Employee.E_ID = Department.E_ID;

-- RIGHTT OUTER JOIN (EXECUTES FULL RIGHT SIDE TABLE AND GIVES NULL WHICH DOESNT MATCH ON THE LEFT SIDE)
SELECT 
    Employee.E_ID,
    Employee.Name,
    Department.Dept_No,
    Department.Dept_name
FROM
    Employee
        RIGHT OUTER JOIN
    department ON Employee.E_ID = Department.E_ID;

-- SIMILAR TO INNER JOIN BUT DISPLAYS OUTCOME BASED ON THE SIMILAR COLUMN OR MATCHING COLUMN)
select * from employee natural join department;

-- CROSS JOIN
select employee.E_ID, department.Dept_name from employee CROSS JOIN department;

USE ROX_HOTEL

SELECT 
    RESERVATION_ID,
    STATUS_CODE,
    BOOKING_DATE,
    DAYS
FROM
    BOOKINGS
        INNER JOIN
    HOTEL_DETAIL_INFORMATION ON RESERVATION_ID = EMAIL_ID;
    
    
USE SAKILA;

CREATE VIEW Customer_details AS    
SELECT customer_id, first_name, last_name , email    
FROM sakila.customer    
GROUP by customer_id;   -- "GROUP BY IS OPTIONAL" / ALSO WE CAN USE WHERE CLAUSE ......
select * from customer_details;

CREATE VIEW ROX_HOTEL AS    
SELECT RESERVATION_ID, STATUS_CODE, BOOKING_DATE  
FROM  BOOKING 
GROUP by RESERVATION_ID; 
select * from ROX_HOTEL;


