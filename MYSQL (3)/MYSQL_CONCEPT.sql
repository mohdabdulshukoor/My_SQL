SELECT * FROM customer;

SELECT title as 'Film Name' FROM Film;

select title, length, rental_rate from film where rental_rate = 4.99;

SELECT * FROM Customer WHERE Last_Name = 'SMITH' OR Last_Name = 'JONES';

SELECT * FROM Customer WHERE First_Name = 'JENNIFER' AND Last_Name ='DAVIS';

SELECT * FROM Customer WHERE NOT First_Name = 'MARY';

SELECT Film_Id, Title, Rental_Rate FROM Film WHERE Rental_Rate < 1;

use sakila;
-- SELECT Ti, Rental_Rate FROM Film WHERE Rental_Rate BETWEEN 0.99 AND 2.99;
select distinct actor_id from film_actor where actor_id between 1 and 5;

SELECT Title FROM Film WHERE Title LIKE'a%y';

SELECT Film_Id, Title, Description, Rental_Rate FROM Film WHERE Title IN ('AFRICAN EGG','AGENT TRUMAN','ALONE TRIP');

SELECT 2*(Rental_Rate) FROM Film WHERE Title='ACADEMY DINOSAUR';

SELECT 7 DIV 2;

SELECT 7 / 2;





-- easy
SELECT left ('DAVID',4);

select left ('michael',3);

SELECT reverse ('RAM');

SELECT lower ('RICHARD');

select upper ('RICHARD');

select upper(substring('name',1,1));

select upper(substring('name',1,4));

select concat(upper(substring('name',1,4)),lower(substring('name',2)));

SELECT CONCAT(First_Name, ' ', Last_Name) AS 'Customer Name' FROM Customer;



-- REGULAR EXPRESSIONS.....(REGEXP)
SELECT * FROM SAKILA.ACTOR WHERE FIRST_NAME REGEXP 'A?'; 


-- DATE AND TIME FUNCTIONS.....
SELECT curdate();
select now();
SELECT ADDDATE('2008-8-24 15:25:52', INTERVAL '2:00' HOUR_MINUTE);
SELECT DATE('2008-08-16 22:55:56');
SELECT MONTH('2007-08-16 16:40:45');
SELECT MONTHNAME('2008-07-24 20:40:45');


-- MATHEMATICAL FUNCTIONS
SELECT Title,ROUND(Rental_Rate,1) AS 'Rental Rate' FROM Film;
SELECT FLOOR(12.60);
SELECT ROUND(12.60);
Select cot(3.5);


-- INFORMATION FUNCTIONS......
SELECT CURRENT_USER();
SELECT CONNECTION_ID();
SELECT DATABASE();
SELECT VERSION();


-- AGGREGATE FUNCTIONS......
SELECT COUNT(*) as 'Number of films' FROM Film;
select avg(rental_rate) from film;
select sum(rental_rate) from film;
select min(rental_rate) from film;
select max(rental_rate) from film;


-- ORDER BY CLAUSE
SELECT Rental_ID, Amount, Payment_Date FROM Payment ORDER BY Amount DESC;


-- GROUP BY CLAUSE
 

SELECT Customer_ID AS 'Customer ID', SUM(Amount) AS 'Total Amount' FROM Payment
GROUP BY Customer_ID HAVING Customer_ID < 5;

SELECT CUSTOMER_ID, AMOUNT FROM PAYMENT;
